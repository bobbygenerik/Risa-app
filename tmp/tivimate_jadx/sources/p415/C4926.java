package p415;

/* renamed from: ﹳـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4926 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f18367;

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f18368;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f18369;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f18370;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f18371;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public float f18372;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f18373;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f18374;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f18375;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float m9730(long j) {
        long j2 = this.f18370;
        if (j < j2) {
            return 0.0f;
        }
        long j3 = this.f18371;
        if (j3 < 0 || j < j3) {
            return ViewOnTouchListenerC4921.m9723(((float) (j - j2)) / this.f18374, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.f18372;
        return (ViewOnTouchListenerC4921.m9723(((float) (j - j3)) / this.f18367, 0.0f, 1.0f) * f) + (1.0f - f);
    }
}
