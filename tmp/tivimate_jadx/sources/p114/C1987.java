package p114;

import android.os.LocaleList;
import java.util.Locale;

/* renamed from: ˆﾞ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1987 implements InterfaceC1983 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LocaleList f7848;

    public C1987(Object obj) {
        this.f7848 = (LocaleList) obj;
    }

    public final boolean equals(Object obj) {
        return this.f7848.equals(((InterfaceC1983) obj).mo4968());
    }

    @Override // p114.InterfaceC1983
    public final Locale get(int i) {
        return this.f7848.get(i);
    }

    public final int hashCode() {
        return this.f7848.hashCode();
    }

    @Override // p114.InterfaceC1983
    public final boolean isEmpty() {
        return this.f7848.isEmpty();
    }

    @Override // p114.InterfaceC1983
    public final int size() {
        return this.f7848.size();
    }

    public final String toString() {
        return this.f7848.toString();
    }

    @Override // p114.InterfaceC1983
    /* renamed from: ⁱˊ */
    public final Object mo4968() {
        return this.f7848;
    }

    @Override // p114.InterfaceC1983
    /* renamed from: ﹳٴ */
    public final String mo4969() {
        return this.f7848.toLanguageTags();
    }
}
