package p435;

import java.util.regex.Matcher;
import p152.C2440;
import p329.InterfaceC4106;

/* renamed from: ﹶˑ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C5151 extends C2440 implements InterfaceC4106 {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final C5151 f19425 = new C2440(1, C5149.class, "next", "next()Lkotlin/text/MatchResult;", 0);

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        C5149 c5149 = (C5149) obj;
        CharSequence charSequence = c5149.f19423;
        Matcher matcher = c5149.f19424;
        int end = matcher.end() + (matcher.end() == matcher.start() ? 1 : 0);
        if (end > charSequence.length()) {
            return null;
        }
        Matcher matcher2 = matcher.pattern().matcher(charSequence);
        if (matcher2.find(end)) {
            return new C5149(matcher2, charSequence);
        }
        return null;
    }
}
