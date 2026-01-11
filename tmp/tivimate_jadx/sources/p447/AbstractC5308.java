package p447;

import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5308 extends AbstractC5237 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f20011;

    public AbstractC5308(C5322 c5322) {
        super(c5322);
        ((C5322) ((ᵎﹶ) this).ʾˋ).f20207++;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final void m10525() {
        if (this.f20011) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (mo10296()) {
            return;
        }
        ((C5322) ((ᵎﹶ) this).ʾˋ).f20201.incrementAndGet();
        this.f20011 = true;
    }

    /* renamed from: ˋˊ */
    public abstract boolean mo10296();

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final void m10526() {
        if (!this.f20011) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
