package p328;

/* renamed from: ᴵᵔ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4077 implements InterfaceC4062, InterfaceC4064 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15542;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4077 f15541 = new C4077(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4077 f15540 = new C4077(1);

    public /* synthetic */ C4077(int i) {
        this.f15542 = i;
    }

    @Override // p328.InterfaceC4064
    public float getInterpolation(float f) {
        switch (this.f15542) {
            case 2:
                return ((float) (Math.cos((f + 1.0f) * 3.141592653589793d) / 2.0d)) + 0.5f;
            default:
                return f;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p328.InterfaceC4062
    /* renamed from: ﹳٴ */
    public Object mo8270(float f, Float f2, Float f3) {
        switch (this.f15542) {
            case 0:
                float floatValue = f2.floatValue();
                return Float.valueOf(((f3.floatValue() - floatValue) * f) + floatValue);
            default:
                return Integer.valueOf((int) ((f * (((Integer) f3).intValue() - r3)) + ((Integer) f2).intValue()));
        }
    }
}
