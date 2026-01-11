package p011;

import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.SwitchPreference;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: ʻᐧ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0857 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Class[] f3663 = {Context.class, AttributeSet.class};

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final HashMap f3664 = new HashMap();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0850 f3665;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f3668;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object[] f3667 = new Object[2];

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String[] f3666 = {Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."};

    public C0857(Context context, C0850 c0850) {
        this.f3668 = context;
        this.f3665 = c0850;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final PreferenceGroup m3055(XmlResourceParser xmlResourceParser) {
        int next;
        PreferenceGroup preferenceGroup;
        synchronized (this.f3667) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
            this.f3667[0] = this.f3668;
            do {
                try {
                    try {
                        next = xmlResourceParser.next();
                        if (next == 2) {
                            break;
                        }
                    } catch (InflateException e) {
                        throw e;
                    }
                } catch (IOException e2) {
                    InflateException inflateException = new InflateException(xmlResourceParser.getPositionDescription() + ": " + e2.getMessage());
                    inflateException.initCause(e2);
                    throw inflateException;
                } catch (XmlPullParserException e3) {
                    InflateException inflateException2 = new InflateException(e3.getMessage());
                    inflateException2.initCause(e3);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlResourceParser.getPositionDescription() + ": No start tag found!");
            }
            preferenceGroup = (PreferenceGroup) m3057(xmlResourceParser.getName(), asAttributeSet);
            preferenceGroup.m836(this.f3665);
            m3056(xmlResourceParser, preferenceGroup, asAttributeSet);
        }
        return preferenceGroup;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3056(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                boolean equals = "intent".equals(name);
                Context context = this.f3668;
                if (equals) {
                    try {
                        preference.f1383 = Intent.parseIntent(context.getResources(), xmlPullParser, attributeSet);
                    } catch (IOException e) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    context.getResources().parseBundleExtra("extra", attributeSet, preference.m835());
                    try {
                        int depth2 = xmlPullParser.getDepth();
                        while (true) {
                            int next2 = xmlPullParser.next();
                            if (next2 != 1 && (next2 != 3 || xmlPullParser.getDepth() > depth2)) {
                            }
                        }
                    } catch (IOException e2) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e2);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference m3057 = m3057(name, attributeSet);
                    ((PreferenceGroup) preference).m850(m3057);
                    m3056(xmlPullParser, m3057, attributeSet);
                }
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Preference m3057(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? m3058(str, this.f3666, attributeSet) : m3058(str, null, attributeSet);
        } catch (InflateException e) {
            throw e;
        } catch (ClassNotFoundException e2) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e2);
            throw inflateException;
        } catch (Exception e3) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e3);
            throw inflateException2;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Preference m3058(String str, String[] strArr, AttributeSet attributeSet) {
        Class<?> cls;
        HashMap hashMap = f3664;
        Constructor<?> constructor = (Constructor) hashMap.get(str);
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.f3668.getClassLoader();
                    if (strArr != null && strArr.length != 0) {
                        cls = null;
                        ClassNotFoundException e = null;
                        for (String str2 : strArr) {
                            try {
                                cls = Class.forName(str2 + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e2) {
                                e = e2;
                            }
                        }
                        if (cls == null) {
                            if (e != null) {
                                throw e;
                            }
                            throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                        }
                        constructor = cls.getConstructor(f3663);
                        constructor.setAccessible(true);
                        hashMap.put(str, constructor);
                    }
                    cls = Class.forName(str, false, classLoader);
                    constructor = cls.getConstructor(f3663);
                    constructor.setAccessible(true);
                    hashMap.put(str, constructor);
                } catch (Exception e3) {
                    InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                    inflateException.initCause(e3);
                    throw inflateException;
                }
            } catch (ClassNotFoundException e4) {
                throw e4;
            }
        }
        Object[] objArr = this.f3667;
        objArr[1] = attributeSet;
        return (Preference) constructor.newInstance(objArr);
    }
}
