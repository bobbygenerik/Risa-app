package p255;

import java.util.Arrays;
import p219.AbstractC3024;
import p430.AbstractC5096;

/* renamed from: יـ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3360 implements Cloneable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public /* synthetic */ int f13143;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public /* synthetic */ int[] f13144;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public /* synthetic */ Object[] f13145;

    public C3360() {
        int i;
        int i2 = 4;
        while (true) {
            i = 40;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (40 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 4;
        this.f13144 = new int[i4];
        this.f13145 = new Object[i4];
    }

    public final String toString() {
        int i = this.f13143;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        int i2 = this.f13143;
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(this.f13144[i3]);
            sb.append('=');
            Object m7202 = m7202(i3);
            if (m7202 != this) {
                sb.append(m7202);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object m7198(int i) {
        Object obj;
        int m6554 = AbstractC3024.m6554(this.f13144, this.f13143, i);
        if (m6554 < 0 || (obj = this.f13145[m6554]) == AbstractC3355.f13125) {
            return null;
        }
        return obj;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m7199(int i, Object obj) {
        int m6554 = AbstractC3024.m6554(this.f13144, this.f13143, i);
        if (m6554 >= 0) {
            this.f13145[m6554] = obj;
            return;
        }
        int i2 = ~m6554;
        int i3 = this.f13143;
        if (i2 < i3) {
            Object[] objArr = this.f13145;
            if (objArr[i2] == AbstractC3355.f13125) {
                this.f13144[i2] = i;
                objArr[i2] = obj;
                return;
            }
        }
        if (i3 >= this.f13144.length) {
            int i4 = (i3 + 1) * 4;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 4;
            this.f13144 = Arrays.copyOf(this.f13144, i7);
            this.f13145 = Arrays.copyOf(this.f13145, i7);
        }
        int i8 = this.f13143;
        if (i8 - i2 != 0) {
            int[] iArr = this.f13144;
            int i9 = i2 + 1;
            AbstractC5096.m9998(i9, i2, i8, iArr, iArr);
            Object[] objArr2 = this.f13145;
            AbstractC5096.m10002(i9, i2, this.f13143, objArr2, objArr2);
        }
        this.f13144[i2] = i;
        this.f13145[i2] = obj;
        this.f13143++;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C3360 clone() {
        C3360 c3360 = (C3360) super.clone();
        c3360.f13144 = (int[]) this.f13144.clone();
        c3360.f13145 = (Object[]) this.f13145.clone();
        return c3360;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7201(int i, Object obj) {
        int i2 = this.f13143;
        if (i2 != 0 && i <= this.f13144[i2 - 1]) {
            m7199(i, obj);
            return;
        }
        if (i2 >= this.f13144.length) {
            int i3 = (i2 + 1) * 4;
            int i4 = 4;
            while (true) {
                if (i4 >= 32) {
                    break;
                }
                int i5 = (1 << i4) - 12;
                if (i3 <= i5) {
                    i3 = i5;
                    break;
                }
                i4++;
            }
            int i6 = i3 / 4;
            this.f13144 = Arrays.copyOf(this.f13144, i6);
            this.f13145 = Arrays.copyOf(this.f13145, i6);
        }
        this.f13144[i2] = i;
        this.f13145[i2] = obj;
        this.f13143 = i2 + 1;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object m7202(int i) {
        Object[] objArr = this.f13145;
        if (i < objArr.length) {
            return objArr[i];
        }
        throw new ArrayIndexOutOfBoundsException();
    }
}
