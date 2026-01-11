package p447;

import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˎᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5276 extends ᵎﹶ {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f19908;

    public AbstractC5276(C5322 c5322) {
        super(c5322);
        ((C5322) ((ᵎﹶ) this).ʾˋ).f20207++;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final void m10463() {
        if (!this.f19908) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final void m10464() {
        if (this.f19908) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (mo10205()) {
            return;
        }
        ((C5322) ((ᵎﹶ) this).ʾˋ).f20201.incrementAndGet();
        this.f19908 = true;
    }

    /* renamed from: ﹶˎ */
    public abstract boolean mo10205();
}
