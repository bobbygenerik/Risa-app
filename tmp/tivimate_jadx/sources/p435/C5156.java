package p435;

import java.util.Iterator;
import java.util.regex.Matcher;
import p029.C1122;
import p029.C1124;
import p029.C1125;
import p081.C1716;
import p081.C1718;
import p430.AbstractC5112;
import ˈˊ.ˉˆ;
import ᐧᵎ.ˆʾ;

/* renamed from: ﹶˑ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5156 extends AbstractC5112 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C5149 f19437;

    public C5156(C5149 c5149) {
        this.f19437 = c5149;
    }

    @Override // p430.AbstractC5112, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj == null ? true : obj instanceof C5144) {
            return super.contains((C5144) obj);
        }
        return false;
    }

    @Override // p430.AbstractC5112, java.util.Collection
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C1122(new C1125(new C1124(2, new C1718(0, mo5786() - 1, 1)), new ˆʾ(22, this), 0));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5144 m10152(int i) {
        Matcher matcher = this.f19437.f19424;
        C1716 c1716 = ˉˆ.ˉٴ(matcher.start(i), matcher.end(i));
        if (c1716.f7020 >= 0) {
            return new C5144(matcher.group(i), c1716);
        }
        return null;
    }

    @Override // p430.AbstractC5112
    /* renamed from: ﹳٴ */
    public final int mo5786() {
        return this.f19437.f19424.groupCount() + 1;
    }
}
