package p311;

import androidx.leanback.widget.ʻٴ;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p208.C2950;
import p208.C2968;

/* renamed from: ᐧᵢ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3811 {

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static final Pattern f14753 = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static final Pattern f14754 = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public LinkedHashSet f14755;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f14756;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f14757;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Method f14758;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public C2968 f14759;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public boolean f14760;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f14761;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Annotation[] f14762;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f14763;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public String f14764;

    /* renamed from: ˏי, reason: contains not printable characters */
    public C2950 f14765;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Annotation[][] f14766;

    /* renamed from: יـ, reason: contains not printable characters */
    public String f14767;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public AbstractC3798[] f14768;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f14769;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f14770;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f14771;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f14772;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f14773;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Class f14774;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʻٴ f14775;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f14776;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f14777;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Type[] f14778;

    public C3811(ʻٴ r1, Class cls, Method method) {
        this.f14775 = r1;
        this.f14774 = cls;
        this.f14758 = method;
        this.f14762 = method.getAnnotations();
        this.f14778 = method.getGenericParameterTypes();
        this.f14766 = method.getParameterAnnotations();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Class m7985(Class cls) {
        return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7986(int i, Type type) {
        if (AbstractC3798.m7962(type)) {
            throw AbstractC3798.m7964(this.f14758, i, "Parameter type must not include a type variable or wildcard: %s", type);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7987(String str, String str2, boolean z) {
        String str3 = this.f14764;
        Method method = this.f14758;
        if (str3 != null) {
            throw AbstractC3798.m7974(method, null, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
        }
        this.f14764 = str;
        this.f14757 = z;
        if (str2.isEmpty()) {
            return;
        }
        int indexOf = str2.indexOf(63);
        Pattern pattern = f14753;
        if (indexOf != -1 && indexOf < str2.length() - 1) {
            String substring = str2.substring(indexOf + 1);
            if (pattern.matcher(substring).find()) {
                throw AbstractC3798.m7974(method, null, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
            }
        }
        this.f14767 = str2;
        Matcher matcher = pattern.matcher(str2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        this.f14755 = linkedHashSet;
    }
}
