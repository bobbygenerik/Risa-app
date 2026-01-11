package p029;

import java.util.Iterator;

/* renamed from: ʼᴵ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1121 implements InterfaceC1130 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f4378;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1130 f4379;

    public C1121(InterfaceC1130 interfaceC1130, int i) {
        this.f4379 = interfaceC1130;
        this.f4378 = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override // p029.InterfaceC1130
    public final Iterator iterator() {
        return new C1128(this);
    }
}
