package p392;

import android.content.SharedPreferences;
import android.os.SystemClock;
import j$.util.Objects;
import p055.C1485;
import p296.AbstractC3659;
import p305.AbstractC3712;
import p305.C3721;
import p447.C5313;

/* renamed from: ⁱי.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4643 implements InterfaceC4686 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f17345;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f17346;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f17347;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f17348;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object f17349;

    public C4643(C3721 c3721) {
        this.f17347 = c3721;
        this.f17349 = C1485.f5835;
    }

    public C4643(C5313 c5313, String str, long j) {
        Objects.requireNonNull(c5313);
        this.f17349 = c5313;
        AbstractC3659.m7680(str);
        this.f17347 = str;
        this.f17346 = j;
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ʽ */
    public void mo759(C1485 c1485) {
        if (this.f17348) {
            m9218(mo777());
        }
        this.f17349 = c1485;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public long m9215() {
        if (!this.f17348) {
            this.f17348 = true;
            C5313 c5313 = (C5313) this.f17349;
            this.f17345 = c5313.m10545().getLong((String) this.f17347, this.f17346);
        }
        return this.f17345;
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ˑﹳ */
    public C1485 mo771() {
        return (C1485) this.f17349;
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ᵎﹶ */
    public long mo777() {
        long j = this.f17346;
        if (!this.f17348) {
            return j;
        }
        ((C3721) this.f17347).getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f17345;
        return (((C1485) this.f17349).f5838 == 1.0f ? AbstractC3712.m7757(elapsedRealtime) : elapsedRealtime * r4.f5836) + j;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void m9216(long j) {
        SharedPreferences.Editor edit = ((C5313) this.f17349).m10545().edit();
        edit.putLong((String) this.f17347, j);
        edit.apply();
        this.f17345 = j;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m9217() {
        if (this.f17348) {
            return;
        }
        ((C3721) this.f17347).getClass();
        this.f17345 = SystemClock.elapsedRealtime();
        this.f17348 = true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m9218(long j) {
        this.f17346 = j;
        if (this.f17348) {
            ((C3721) this.f17347).getClass();
            this.f17345 = SystemClock.elapsedRealtime();
        }
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ﾞᴵ */
    public /* synthetic */ boolean mo782() {
        return false;
    }
}
