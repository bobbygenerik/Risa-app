package p052;

import p033.EnumC1175;
import p035.AbstractC1220;
import p219.AbstractC3024;
import p430.AbstractC5096;

/* renamed from: ʽᴵ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1417 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f5545;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f5546;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f5547;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f5548;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5549;

    public /* synthetic */ C1417(byte b, int i) {
        this.f5549 = i;
    }

    public C1417(int i) {
        this.f5549 = 1;
        if (!(i >= 1)) {
            AbstractC3024.m6552("capacity must be >= 1");
            throw null;
        }
        if (!(i <= 1073741824)) {
            AbstractC3024.m6552("capacity must be <= 2^30");
            throw null;
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.f5546 = i - 1;
        this.f5547 = new Object[i];
    }

    public String toString() {
        switch (this.f5549) {
            case 2:
                StringBuilder sb = new StringBuilder("NegotiatedProtocol{dialect=");
                sb.append((EnumC1175) this.f5547);
                sb.append(", maxTransactSize=");
                sb.append(this.f5548);
                sb.append(", maxReadSize=");
                sb.append(this.f5545);
                sb.append(", maxWriteSize=");
                return AbstractC1220.m3784(sb, this.f5546, '}');
            default:
                return super.toString();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m4162() {
        Object[] objArr = (Object[]) this.f5547;
        int length = objArr.length;
        int i = this.f5548;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr2 = new Object[i3];
        AbstractC5096.m10002(0, i, length, objArr, objArr2);
        AbstractC5096.m10002(i2, 0, this.f5548, (Object[]) this.f5547, objArr2);
        this.f5547 = objArr2;
        this.f5548 = 0;
        this.f5545 = length;
        this.f5546 = i3 - 1;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m4163(int i) {
        if (i <= 0) {
            return;
        }
        if (i > m4167()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = this.f5545;
        int i3 = i < i2 ? i2 - i : 0;
        for (int i4 = i3; i4 < i2; i4++) {
            ((Object[]) this.f5547)[i4] = null;
        }
        int i5 = this.f5545;
        int i6 = i5 - i3;
        int i7 = i - i6;
        this.f5545 = i5 - i6;
        if (i7 > 0) {
            int length = ((Object[]) this.f5547).length;
            this.f5545 = length;
            int i8 = length - i7;
            for (int i9 = i8; i9 < length; i9++) {
                ((Object[]) this.f5547)[i9] = null;
            }
            this.f5545 = i8;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m4164(int i) {
        if (i <= 0) {
            return;
        }
        if (i > m4167()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = ((Object[]) this.f5547).length;
        int i2 = this.f5548;
        if (i < length - i2) {
            length = i2 + i;
        }
        while (i2 < length) {
            ((Object[]) this.f5547)[i2] = null;
            i2++;
        }
        int i3 = this.f5548;
        int i4 = length - i3;
        int i5 = i - i4;
        this.f5548 = this.f5546 & (i3 + i4);
        if (i5 > 0) {
            for (int i6 = 0; i6 < i5; i6++) {
                ((Object[]) this.f5547)[i6] = null;
            }
            this.f5548 = i5;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m4165(Object obj) {
        Object[] objArr = (Object[]) this.f5547;
        int i = this.f5545;
        objArr[i] = obj;
        int i2 = this.f5546 & (i + 1);
        this.f5545 = i2;
        if (i2 == this.f5548) {
            m4162();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m4166(C1400 c1400) {
        c1400.f5480 = null;
        c1400.f5481 = null;
        c1400.f5486 = null;
        c1400.f5488 = 1;
        int i = this.f5548;
        if (i > 0) {
            int i2 = this.f5546;
            if ((i2 & 1) == 0) {
                this.f5546 = i2 + 1;
                this.f5548 = i - 1;
                this.f5545++;
            }
        }
        c1400.f5481 = (C1400) this.f5547;
        this.f5547 = c1400;
        int i3 = this.f5546;
        int i4 = i3 + 1;
        this.f5546 = i4;
        int i5 = this.f5548;
        if (i5 > 0 && (i4 & 1) == 0) {
            this.f5546 = i3 + 2;
            this.f5548 = i5 - 1;
            this.f5545++;
        }
        int i6 = 4;
        while (true) {
            int i7 = i6 - 1;
            if ((this.f5546 & i7) != i7) {
                return;
            }
            int i8 = this.f5545;
            if (i8 == 0) {
                C1400 c14002 = (C1400) this.f5547;
                C1400 c14003 = c14002.f5481;
                C1400 c14004 = c14003.f5481;
                c14003.f5481 = c14004.f5481;
                this.f5547 = c14003;
                c14003.f5486 = c14004;
                c14003.f5480 = c14002;
                c14003.f5488 = c14002.f5488 + 1;
                c14004.f5481 = c14003;
                c14002.f5481 = c14003;
            } else if (i8 == 1) {
                C1400 c14005 = (C1400) this.f5547;
                C1400 c14006 = c14005.f5481;
                this.f5547 = c14006;
                c14006.f5480 = c14005;
                c14006.f5488 = c14005.f5488 + 1;
                c14005.f5481 = c14006;
                this.f5545 = 0;
            } else if (i8 == 2) {
                this.f5545 = 0;
            }
            i6 *= 2;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int m4167() {
        return (this.f5545 - this.f5548) & this.f5546;
    }
}
