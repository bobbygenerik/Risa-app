package p422;

import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p035.AbstractC1220;
import p223.C3056;

/* renamed from: ﹳﹳ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5003 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f18693;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final byte[] f18694;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f18695;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18696;

    public C5003(long j, byte[] bArr, int i, int i2) {
        this.f18696 = i;
        this.f18695 = i2;
        this.f18693 = j;
        this.f18694 = bArr;
    }

    public C5003(byte[] bArr, int i, int i2) {
        this(-1L, bArr, i, i2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C5003 m9853(int i, ByteOrder byteOrder) {
        ByteBuffer wrap = ByteBuffer.wrap(new byte[C5006.f18706[3]]);
        wrap.order(byteOrder);
        wrap.putShort((short) new int[]{i}[0]);
        return new C5003(wrap.array(), 3, 1);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C5003 m9854(C5005 c5005, ByteOrder byteOrder) {
        C5005[] c5005Arr = {c5005};
        ByteBuffer wrap = ByteBuffer.wrap(new byte[C5006.f18706[5]]);
        wrap.order(byteOrder);
        C5005 c50052 = c5005Arr[0];
        wrap.putInt((int) c50052.f18702);
        wrap.putInt((int) c50052.f18701);
        return new C5003(wrap.array(), 5, 1);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C5003 m9855(long j, ByteOrder byteOrder) {
        long[] jArr = {j};
        ByteBuffer wrap = ByteBuffer.wrap(new byte[C5006.f18706[4]]);
        wrap.order(byteOrder);
        wrap.putInt((int) jArr[0]);
        return new C5003(wrap.array(), 4, 1);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(C5006.f18721[this.f18696]);
        sb.append(", data length:");
        return AbstractC1220.m3782(sb, this.f18694.length, ")");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final double m9856(ByteOrder byteOrder) {
        Object m9858 = m9858(byteOrder);
        if (m9858 == null) {
            throw new NumberFormatException("NULL can't be converted to a double value");
        }
        if (m9858 instanceof String) {
            return Double.parseDouble((String) m9858);
        }
        if (m9858 instanceof long[]) {
            if (((long[]) m9858).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (m9858 instanceof int[]) {
            if (((int[]) m9858).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (m9858 instanceof double[]) {
            double[] dArr = (double[]) m9858;
            if (dArr.length == 1) {
                return dArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(m9858 instanceof C5005[])) {
            throw new NumberFormatException("Couldn't find a double value");
        }
        C5005[] c5005Arr = (C5005[]) m9858;
        if (c5005Arr.length != 1) {
            throw new NumberFormatException("There are more than one component");
        }
        C5005 c5005 = c5005Arr[0];
        return c5005.f18702 / c5005.f18701;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m9857(ByteOrder byteOrder) {
        Object m9858 = m9858(byteOrder);
        if (m9858 == null) {
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }
        if (m9858 instanceof String) {
            return Integer.parseInt((String) m9858);
        }
        if (m9858 instanceof long[]) {
            long[] jArr = (long[]) m9858;
            if (jArr.length == 1) {
                return (int) jArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(m9858 instanceof int[])) {
            throw new NumberFormatException("Couldn't find a integer value");
        }
        int[] iArr = (int[]) m9858;
        if (iArr.length == 1) {
            return iArr[0];
        }
        throw new NumberFormatException("There are more than one component");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v22, types: [int[]] */
    /* JADX WARN: Type inference failed for: r14v23, types: [long[]] */
    /* JADX WARN: Type inference failed for: r14v24, types: [ﹳﹳ.ˑﹳ[]] */
    /* JADX WARN: Type inference failed for: r14v25, types: [int[]] */
    /* JADX WARN: Type inference failed for: r14v26, types: [int[]] */
    /* JADX WARN: Type inference failed for: r14v27, types: [ﹳﹳ.ˑﹳ[]] */
    /* JADX WARN: Type inference failed for: r14v28, types: [double[]] */
    /* JADX WARN: Type inference failed for: r14v29, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v30, types: [double[]] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Serializable m9858(ByteOrder byteOrder) {
        C5008 c5008;
        ?? str;
        byte b;
        byte[] bArr = this.f18694;
        C5008 c50082 = null;
        try {
            c5008 = new C5008(bArr);
        } catch (IOException e) {
            c5008 = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            c5008.f18748 = byteOrder;
            int i = this.f18696;
            int i2 = 0;
            int i3 = this.f18695;
            switch (i) {
                case 1:
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (bArr.length == 1 && (b = bArr[0]) >= 0 && b <= 1) {
                        String str2 = new String(new char[]{(char) (b + 48)});
                        try {
                            c5008.close();
                            return str2;
                        } catch (IOException e2) {
                            return str2;
                        }
                    }
                    str = new String(bArr, C5006.f18726);
                    break;
                case 2:
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (i3 >= C5006.f18711.length) {
                        int i4 = 0;
                        while (true) {
                            byte[] bArr2 = C5006.f18711;
                            if (i4 >= bArr2.length) {
                                i2 = bArr2.length;
                            } else if (bArr[i4] == bArr2[i4]) {
                                i4++;
                            }
                        }
                    }
                    StringBuilder sb = new StringBuilder();
                    while (i2 < i3) {
                        byte b2 = bArr[i2];
                        if (b2 == 0) {
                            str = sb.toString();
                            break;
                        } else {
                            if (b2 >= 32) {
                                sb.append((char) b2);
                            } else {
                                sb.append('?');
                            }
                            i2++;
                        }
                    }
                    str = sb.toString();
                case 3:
                    str = new int[i3];
                    while (i2 < i3) {
                        str[i2] = c5008.readUnsignedShort();
                        i2++;
                    }
                case 4:
                    str = new long[i3];
                    while (i2 < i3) {
                        str[i2] = c5008.readInt() & 4294967295L;
                        i2++;
                    }
                case 5:
                    str = new C5005[i3];
                    while (i2 < i3) {
                        str[i2] = new C5005(c5008.readInt() & 4294967295L, c5008.readInt() & 4294967295L);
                        i2++;
                    }
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    str = new int[i3];
                    while (i2 < i3) {
                        str[i2] = c5008.readShort();
                        i2++;
                    }
                case 9:
                    str = new int[i3];
                    while (i2 < i3) {
                        str[i2] = c5008.readInt();
                        i2++;
                    }
                case 10:
                    str = new C5005[i3];
                    while (i2 < i3) {
                        str[i2] = new C5005(c5008.readInt(), c5008.readInt());
                        i2++;
                    }
                case 11:
                    str = new double[i3];
                    while (i2 < i3) {
                        str[i2] = c5008.readFloat();
                        i2++;
                    }
                case 12:
                    str = new double[i3];
                    while (i2 < i3) {
                        str[i2] = c5008.readDouble();
                        i2++;
                    }
                default:
                    try {
                        c5008.close();
                        return null;
                    } catch (IOException e3) {
                        return null;
                    }
            }
            try {
                c5008.close();
                return str;
            } catch (IOException e4) {
                return str;
            }
        } catch (IOException e5) {
            if (c5008 != null) {
                try {
                    c5008.close();
                } catch (IOException e6) {
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            c50082 = c5008;
            if (c50082 != null) {
                try {
                    c50082.close();
                } catch (IOException e7) {
                }
            }
            throw th;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String m9859(ByteOrder byteOrder) {
        Object m9858 = m9858(byteOrder);
        if (m9858 == null) {
            return null;
        }
        if (m9858 instanceof String) {
            return (String) m9858;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (m9858 instanceof long[]) {
            long[] jArr = (long[]) m9858;
            while (i < jArr.length) {
                sb.append(jArr[i]);
                i++;
                if (i != jArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (m9858 instanceof int[]) {
            int[] iArr = (int[]) m9858;
            while (i < iArr.length) {
                sb.append(iArr[i]);
                i++;
                if (i != iArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (m9858 instanceof double[]) {
            double[] dArr = (double[]) m9858;
            while (i < dArr.length) {
                sb.append(dArr[i]);
                i++;
                if (i != dArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (!(m9858 instanceof C5005[])) {
            return null;
        }
        C5005[] c5005Arr = (C5005[]) m9858;
        while (i < c5005Arr.length) {
            sb.append(c5005Arr[i].f18702);
            sb.append('/');
            sb.append(c5005Arr[i].f18701);
            i++;
            if (i != c5005Arr.length) {
                sb.append(",");
            }
        }
        return sb.toString();
    }
}
