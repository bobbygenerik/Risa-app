package p050;

import com.hierynomus.protocol.transport.TransportException;
import com.parse.ٴʼ;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import p426.C5054;
import p449.InterfaceC5360;

/* renamed from: ʽٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1385 implements InterfaceC5360 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Boolean f5436;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f5437;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Method f5438;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Queue f5439;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean f5440;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile InterfaceC5360 f5441;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public ٴʼ f5442;

    public C1385(String str, LinkedBlockingQueue linkedBlockingQueue, boolean z) {
        this.f5437 = str;
        this.f5439 = linkedBlockingQueue;
        this.f5440 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C1385.class == obj.getClass() && this.f5437.equals(((C1385) obj).f5437);
    }

    @Override // p449.InterfaceC5360
    public final String getName() {
        return this.f5437;
    }

    public final int hashCode() {
        return this.f5437.hashCode();
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void mo4082(String str, Object obj, Number number) {
        m4099().mo4082(str, obj, number);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void mo4083(Object... objArr) {
        m4099().mo4083(objArr);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo4084(Object obj, String str) {
        m4099().mo4084(obj, str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo4085(Long l, IOException iOException) {
        m4099().mo4085(l, iOException);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo4086(String str, Object... objArr) {
        m4099().mo4086(str, objArr);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void mo4087(Object... objArr) {
        m4099().mo4087(objArr);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo4088(String str, Throwable th) {
        m4099().mo4088(str, th);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m4089() {
        Boolean bool = this.f5436;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.f5438 = this.f5441.getClass().getMethod("log", C5054.class);
            this.f5436 = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.f5436 = Boolean.FALSE;
        }
        return this.f5436.booleanValue();
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo4090(Object obj, Object obj2, String str) {
        m4099().mo4090(obj, obj2, str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo4091() {
        m4099().mo4091();
    }

    @Override // p449.InterfaceC5360
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo4092(Exception exc) {
        m4099().mo4092(exc);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void mo4093(TransportException transportException) {
        m4099().mo4093(transportException);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo4094(Object obj, String str) {
        m4099().mo4094(obj, str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo4095(String str) {
        m4099().mo4095(str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void mo4096(Object obj, String str) {
        m4099().mo4096(obj, str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo4097(Object obj, Object obj2, String str) {
        m4099().mo4097(obj, obj2, str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo4098(Object obj, String str) {
        m4099().mo4098(obj, str);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC5360 m4099() {
        if (this.f5441 != null) {
            return this.f5441;
        }
        if (this.f5440) {
            return C1386.f5443;
        }
        if (this.f5442 == null) {
            Queue queue = this.f5439;
            ٴʼ r0 = new ٴʼ(23, false);
            r0.ʽʽ = this;
            r0.ᴵˊ = this.f5437;
            r0.ˈٴ = queue;
            this.f5442 = r0;
        }
        return this.f5442;
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo4100(Object obj, String str) {
        m4099().mo4100(obj, str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo4101(String str) {
        m4099().mo4101(str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo4102(Object obj, Object obj2, String str) {
        m4099().mo4102(obj, obj2, str);
    }

    @Override // p449.InterfaceC5360
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo4103(Object... objArr) {
        m4099().mo4103(objArr);
    }
}
