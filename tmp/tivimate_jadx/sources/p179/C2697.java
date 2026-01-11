package p179;

import android.view.View;
import java.util.Arrays;
import p035.AbstractC1237;
import p137.AbstractC2305;
import p305.AbstractC3731;
import p392.C4682;

/* renamed from: ˋˋ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2697 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f10270;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f10271;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10272;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10273;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10274 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object f10275;

    public C2697() {
        m6066();
    }

    public C2697(int i) {
        this.f10273 = i;
        byte[] bArr = new byte[131];
        this.f10275 = bArr;
        bArr[2] = 1;
    }

    public C2697(C4682 c4682) {
        this.f10275 = c4682;
    }

    public String toString() {
        switch (this.f10274) {
            case 0:
                StringBuilder sb = new StringBuilder("AnchorInfo{mPosition=");
                sb.append(this.f10273);
                sb.append(", mCoordinate=");
                sb.append(this.f10272);
                sb.append(", mLayoutFromEnd=");
                sb.append(this.f10270);
                sb.append(", mValid=");
                return AbstractC2305.m5377(sb, this.f10271, '}');
            default:
                return super.toString();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m6063(View view, int i) {
        if (this.f10270) {
            int mo3821 = ((AbstractC1237) this.f10275).mo3821(view);
            AbstractC1237 abstractC1237 = (AbstractC1237) this.f10275;
            this.f10272 = (Integer.MIN_VALUE == abstractC1237.f4814 ? 0 : abstractC1237.mo3827() - abstractC1237.f4814) + mo3821;
        } else {
            this.f10272 = ((AbstractC1237) this.f10275).mo3826(view);
        }
        this.f10273 = i;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m6064(View view, int i) {
        AbstractC1237 abstractC1237 = (AbstractC1237) this.f10275;
        int mo3827 = Integer.MIN_VALUE == abstractC1237.f4814 ? 0 : abstractC1237.mo3827() - abstractC1237.f4814;
        if (mo3827 >= 0) {
            m6063(view, i);
            return;
        }
        this.f10273 = i;
        if (!this.f10270) {
            int mo3826 = ((AbstractC1237) this.f10275).mo3826(view);
            int mo3822 = mo3826 - ((AbstractC1237) this.f10275).mo3822();
            this.f10272 = mo3826;
            if (mo3822 > 0) {
                int mo3818 = (((AbstractC1237) this.f10275).mo3818() - Math.min(0, (((AbstractC1237) this.f10275).mo3818() - mo3827) - ((AbstractC1237) this.f10275).mo3821(view))) - (((AbstractC1237) this.f10275).mo3824(view) + mo3826);
                if (mo3818 < 0) {
                    this.f10272 -= Math.min(mo3822, -mo3818);
                    return;
                }
                return;
            }
            return;
        }
        int mo38182 = (((AbstractC1237) this.f10275).mo3818() - mo3827) - ((AbstractC1237) this.f10275).mo3821(view);
        this.f10272 = ((AbstractC1237) this.f10275).mo3818() - mo38182;
        if (mo38182 > 0) {
            int mo3824 = this.f10272 - ((AbstractC1237) this.f10275).mo3824(view);
            int mo38222 = ((AbstractC1237) this.f10275).mo3822();
            int min = mo3824 - (Math.min(((AbstractC1237) this.f10275).mo3826(view) - mo38222, 0) + mo38222);
            if (min < 0) {
                this.f10272 = Math.min(mo38182, -min) + this.f10272;
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean m6065(int i) {
        if (!this.f10270) {
            return false;
        }
        this.f10272 -= i;
        this.f10270 = false;
        this.f10271 = true;
        return true;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m6066() {
        switch (this.f10274) {
            case 0:
                this.f10273 = -1;
                this.f10272 = Integer.MIN_VALUE;
                this.f10270 = false;
                this.f10271 = false;
                return;
            default:
                this.f10270 = false;
                this.f10271 = false;
                return;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void m6067(int i) {
        AbstractC3731.m7857(!this.f10270);
        boolean z = i == this.f10273;
        this.f10270 = z;
        if (z) {
            this.f10272 = 3;
            this.f10271 = false;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m6068() {
        this.f10272 = this.f10270 ? ((AbstractC1237) this.f10275).mo3818() : ((AbstractC1237) this.f10275).mo3822();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m6069(byte[] bArr, int i, int i2) {
        if (this.f10270) {
            int i3 = i2 - i;
            byte[] bArr2 = (byte[]) this.f10275;
            int length = bArr2.length;
            int i4 = this.f10272;
            if (length < i4 + i3) {
                this.f10275 = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, (byte[]) this.f10275, this.f10272, i3);
            this.f10272 += i3;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m6070(int i) {
        this.f10270 |= i > 0;
        this.f10273 += i;
    }
}
