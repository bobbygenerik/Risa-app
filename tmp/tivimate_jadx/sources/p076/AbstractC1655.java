package p076;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* renamed from: ʾﾞ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1655 implements InterfaceC1662 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C1661 f6703;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C1661 f6704;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C1661 f6705;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public ByteBuffer f6706;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f6707;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C1661 f6708;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public ByteBuffer f6709;

    public AbstractC1655() {
        ByteBuffer byteBuffer = InterfaceC1662.f6762;
        this.f6709 = byteBuffer;
        this.f6706 = byteBuffer;
        C1661 c1661 = C1661.f6757;
        this.f6704 = c1661;
        this.f6705 = c1661;
        this.f6708 = c1661;
        this.f6703 = c1661;
    }

    @Override // p076.InterfaceC1662
    public final void flush() {
        this.f6706 = InterfaceC1662.f6762;
        this.f6707 = false;
        this.f6708 = this.f6704;
        this.f6703 = this.f6705;
        mo4522();
    }

    @Override // p076.InterfaceC1662
    public final void reset() {
        ByteBuffer byteBuffer = InterfaceC1662.f6762;
        this.f6706 = byteBuffer;
        this.f6707 = false;
        this.f6709 = byteBuffer;
        C1661 c1661 = C1661.f6757;
        this.f6704 = c1661;
        this.f6705 = c1661;
        this.f6708 = c1661;
        this.f6703 = c1661;
        mo4517();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void mo4515() {
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean mo4516() {
        return this.f6705 != C1661.f6757;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public void mo4517() {
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ˈ, reason: contains not printable characters */
    public ByteBuffer mo4518() {
        ByteBuffer byteBuffer = this.f6706;
        this.f6706 = InterfaceC1662.f6762;
        return byteBuffer;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo4519() {
        this.f6707 = true;
        mo4515();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ByteBuffer m4520(int i) {
        if (this.f6709.capacity() < i) {
            this.f6709 = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f6709.clear();
        }
        ByteBuffer byteBuffer = this.f6709;
        this.f6706 = byteBuffer;
        return byteBuffer;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C1661 mo4521(C1661 c1661) {
        this.f6704 = c1661;
        this.f6705 = mo4524(c1661);
        return mo4516() ? this.f6705 : C1661.f6757;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void mo4522() {
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean mo4523() {
        return this.f6707 && this.f6706 == InterfaceC1662.f6762;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract C1661 mo4524(C1661 c1661);
}
