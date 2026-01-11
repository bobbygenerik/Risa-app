package p447;

/* renamed from: ﹶﾞ.ˎᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5277 extends AbstractC5278 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f19909;

    public AbstractC5277(C5337 c5337) {
        super(c5337);
        this.f19910.f20287++;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final void m10465() {
        if (this.f19909) {
            throw new IllegalStateException("Can't initialize twice");
        }
        mo10191();
        this.f19910.f20274++;
        this.f19909 = true;
    }

    /* renamed from: ˋˊ */
    public abstract void mo10191();

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final void m10466() {
        if (!this.f19909) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
