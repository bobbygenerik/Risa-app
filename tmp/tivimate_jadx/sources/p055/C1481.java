package p055;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p017.C0982;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1481 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public AbstractC0993 f5784;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public AbstractC0993 f5785;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public HashSet f5787;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public AbstractC0993 f5788;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f5790;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C1460 f5791;

    /* renamed from: ˏי, reason: contains not printable characters */
    public HashMap f5792;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f5794;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public AbstractC0993 f5795;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public AbstractC0993 f5797;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f5799;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f5802;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f5803;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f5801 = Integer.MAX_VALUE;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f5800 = Integer.MAX_VALUE;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f5786 = Integer.MAX_VALUE;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f5789 = Integer.MAX_VALUE;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f5793 = Integer.MAX_VALUE;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f5804 = Integer.MAX_VALUE;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f5796 = true;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f5798 = true;

    public C1481() {
        C0982 c0982 = AbstractC0993.f3977;
        C0956 c0956 = C0956.f3901;
        this.f5784 = c0956;
        this.f5788 = c0956;
        this.f5795 = c0956;
        this.f5803 = Integer.MAX_VALUE;
        this.f5790 = Integer.MAX_VALUE;
        this.f5797 = c0956;
        this.f5791 = C1460.f5697;
        this.f5785 = c0956;
        this.f5799 = true;
        this.f5802 = 0;
        this.f5794 = false;
        this.f5792 = new HashMap();
        this.f5787 = new HashSet();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C1481 mo4283(int i, boolean z) {
        if (z) {
            this.f5787.add(Integer.valueOf(i));
            return this;
        }
        this.f5787.remove(Integer.valueOf(i));
        return this;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4284(C1463 c1463) {
        this.f5801 = c1463.f5720;
        this.f5800 = c1463.f5719;
        this.f5786 = c1463.f5705;
        this.f5789 = c1463.f5708;
        this.f5793 = c1463.f5712;
        this.f5804 = c1463.f5723;
        this.f5796 = c1463.f5715;
        this.f5798 = c1463.f5717;
        this.f5784 = c1463.f5703;
        this.f5788 = c1463.f5707;
        this.f5795 = c1463.f5714;
        this.f5803 = c1463.f5722;
        this.f5790 = c1463.f5709;
        this.f5797 = c1463.f5716;
        this.f5791 = c1463.f5710;
        this.f5785 = c1463.f5704;
        this.f5799 = c1463.f5718;
        this.f5802 = c1463.f5721;
        this.f5794 = c1463.f5713;
        this.f5787 = new HashSet(c1463.f5706);
        this.f5792 = new HashMap(c1463.f5711);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public C1481 mo4285() {
        this.f5802 = -3;
        return this;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C1481 mo4286(C1493 c1493) {
        C1474 c1474 = c1493.f5897;
        mo4289(c1474.f5766);
        this.f5792.put(c1474, c1493);
        return this;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C1481 mo4287(String... strArr) {
        C0968 m3261 = AbstractC0993.m3261();
        for (String str : strArr) {
            str.getClass();
            m3261.m3239(AbstractC3712.m7786(str));
        }
        this.f5785 = m3261.m3249();
        this.f5799 = false;
        return this;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C1481 mo4288() {
        this.f5799 = false;
        return this;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C1481 mo4289(int i) {
        Iterator it = this.f5792.values().iterator();
        while (it.hasNext()) {
            if (((C1493) it.next()).f5897.f5766 == i) {
                it.remove();
            }
        }
        return this;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C1463 mo4290() {
        return new C1463(this);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C1481 mo4291() {
        return mo4287(new String[0]);
    }
}
