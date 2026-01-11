package p328;

/* renamed from: ᴵᵔ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4079 implements Cloneable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final float f15545;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f15546;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public float f15547;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f15548;

    public C4079(float f) {
        this.f15545 = f;
    }

    public C4079(float f, float f2) {
        this.f15545 = f;
        this.f15547 = f2;
        this.f15546 = true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C4079 clone() {
        C4079 c4079 = this.f15546 ? new C4079(this.f15545, this.f15547) : new C4079(this.f15545);
        c4079.f15548 = this.f15548;
        return c4079;
    }
}
