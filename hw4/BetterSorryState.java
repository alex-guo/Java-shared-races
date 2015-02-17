//BetterSorryState.java

import java.util.concurrent.atomic.AtomicIntegerArray;

class BetterSorryState implements State {
    private AtomicIntegerArray value;
    private byte maxval;

    BetterSorryState(byte[] v) { 
        value = new AtomicIntegerArray(v.length);
        for(int i = 0; i < v.length; i++) {
            value.set(i, (int) v[i]);
        }
        maxval = 127;
    }

    BetterSorryState(byte[] v, byte m) { 
        value = new AtomicIntegerArray(v.length);
        for(int i = 0; i < v.length; i++) {
            value.set(i, (int) v[i]);
        }
        maxval = m;
    }

    public int size() { return value.length(); }

    public byte[] current() {
        byte[] v = new byte[value.length()];
        for(int i = 0; i < value.length(); i++) {
            v[i] = (byte) value.get(i);
        }

        return v; 
    }

    public boolean swap(int i, int j) {
        byte el_i = (byte) value.get(i);
        byte el_j = (byte) value.get(j);
        if (el_i <= 0 || el_j >= maxval) {
            return false;
        }
        value.lazySet(i, el_i-1);
        value.lazySet(i, el_j+1);
        
        return true;
    }
}

