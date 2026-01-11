package p171;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p152.AbstractC2443;
import p152.AbstractC2444;
import p152.C2461;
import p240.C3232;
import p262.C3432;
import p322.AbstractC3952;
import p430.AbstractC5099;

/* renamed from: ˊﾞ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2640 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LinkedHashMap f10024;

    public C2640(int i) {
        switch (i) {
            case 1:
                this.f10024 = new LinkedHashMap();
                return;
            case 2:
                this.f10024 = new LinkedHashMap();
                return;
            default:
                this.f10024 = new LinkedHashMap();
                return;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public List m5896(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = this.f10024;
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            if (AbstractC2444.m5562(((C3232) entry.getKey()).f12346, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            linkedHashMap2.remove((C3232) it.next());
        }
        return AbstractC5099.m10020(linkedHashMap.values());
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public C3432 m5897(C3232 c3232) {
        return (C3432) this.f10024.remove(c3232);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C3432 m5898(C3232 c3232) {
        LinkedHashMap linkedHashMap = this.f10024;
        Object obj = linkedHashMap.get(c3232);
        if (obj == null) {
            obj = new C3432(c3232);
            linkedHashMap.put(c3232, obj);
        }
        return (C3432) obj;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m5899(HashMap hashMap) {
        Object[] objArr;
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                value = null;
            } else {
                C2461 m5561 = AbstractC2443.m5561(value.getClass());
                if (!m5561.equals(AbstractC2443.m5561(Boolean.TYPE)) && !m5561.equals(AbstractC2443.m5561(Byte.TYPE)) && !m5561.equals(AbstractC2443.m5561(Integer.TYPE)) && !m5561.equals(AbstractC2443.m5561(Long.TYPE)) && !m5561.equals(AbstractC2443.m5561(Float.TYPE)) && !m5561.equals(AbstractC2443.m5561(Double.TYPE)) && !m5561.equals(AbstractC2443.m5561(String.class)) && !m5561.equals(AbstractC2443.m5561(Boolean[].class)) && !m5561.equals(AbstractC2443.m5561(Byte[].class)) && !m5561.equals(AbstractC2443.m5561(Integer[].class)) && !m5561.equals(AbstractC2443.m5561(Long[].class)) && !m5561.equals(AbstractC2443.m5561(Float[].class)) && !m5561.equals(AbstractC2443.m5561(Double[].class)) && !m5561.equals(AbstractC2443.m5561(String[].class))) {
                    int i = 0;
                    if (m5561.equals(AbstractC2443.m5561(boolean[].class))) {
                        boolean[] zArr = (boolean[]) value;
                        String str2 = AbstractC3952.f15261;
                        int length = zArr.length;
                        objArr = new Boolean[length];
                        while (i < length) {
                            objArr[i] = Boolean.valueOf(zArr[i]);
                            i++;
                        }
                    } else if (m5561.equals(AbstractC2443.m5561(byte[].class))) {
                        byte[] bArr = (byte[]) value;
                        String str3 = AbstractC3952.f15261;
                        int length2 = bArr.length;
                        objArr = new Byte[length2];
                        while (i < length2) {
                            objArr[i] = Byte.valueOf(bArr[i]);
                            i++;
                        }
                    } else if (m5561.equals(AbstractC2443.m5561(int[].class))) {
                        int[] iArr = (int[]) value;
                        String str4 = AbstractC3952.f15261;
                        int length3 = iArr.length;
                        objArr = new Integer[length3];
                        while (i < length3) {
                            objArr[i] = Integer.valueOf(iArr[i]);
                            i++;
                        }
                    } else if (m5561.equals(AbstractC2443.m5561(long[].class))) {
                        long[] jArr = (long[]) value;
                        String str5 = AbstractC3952.f15261;
                        int length4 = jArr.length;
                        objArr = new Long[length4];
                        while (i < length4) {
                            objArr[i] = Long.valueOf(jArr[i]);
                            i++;
                        }
                    } else if (m5561.equals(AbstractC2443.m5561(float[].class))) {
                        float[] fArr = (float[]) value;
                        String str6 = AbstractC3952.f15261;
                        int length5 = fArr.length;
                        objArr = new Float[length5];
                        while (i < length5) {
                            objArr[i] = Float.valueOf(fArr[i]);
                            i++;
                        }
                    } else {
                        if (!m5561.equals(AbstractC2443.m5561(double[].class))) {
                            throw new IllegalArgumentException("Key " + str + " has invalid type " + m5561);
                        }
                        double[] dArr = (double[]) value;
                        String str7 = AbstractC3952.f15261;
                        int length6 = dArr.length;
                        objArr = new Double[length6];
                        while (i < length6) {
                            objArr[i] = Double.valueOf(dArr[i]);
                            i++;
                        }
                    }
                    value = objArr;
                }
            }
            this.f10024.put(str, value);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m5900(C2628 c2628) {
        long[] jArr = c2628.f9952;
        if (jArr.length > 0) {
            Long valueOf = Long.valueOf(jArr[0]);
            LinkedHashMap linkedHashMap = this.f10024;
            if (linkedHashMap.containsKey(valueOf)) {
                return;
            }
            linkedHashMap.put(Long.valueOf(c2628.f9952[0]), c2628);
        }
    }
}
