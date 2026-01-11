package p049;

import android.content.Context;
import android.content.SharedPreferences;
import com.parse.ٴʼ;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import p010.AbstractC0844;
import p012.C0902;
import p035.AbstractC1220;
import p106.C1938;
import p183.C2760;
import p218.AbstractC3023;
import p223.C3056;
import p245.AbstractC3287;
import p255.C3370;
import p277.InterfaceC3535;
import p277.InterfaceC3536;
import p429.AbstractC5087;
import ﹳٴ.ﹳٴ;

/* renamed from: ʽـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class SharedPreferencesC1382 implements SharedPreferences {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f5427;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC3536 f5428;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC3535 f5429;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f5430 = new CopyOnWriteArrayList();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SharedPreferences f5431;

    public SharedPreferencesC1382(String str, SharedPreferences sharedPreferences, InterfaceC3536 interfaceC3536, InterfaceC3535 interfaceC3535) {
        this.f5427 = str;
        this.f5431 = sharedPreferences;
        this.f5428 = interfaceC3536;
        this.f5429 = interfaceC3535;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m4075(String str) {
        return "__androidx_security_crypto_encrypted_prefs_key_keyset__".equals(str) || "__androidx_security_crypto_encrypted_prefs_value_keyset__".equals(str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static SharedPreferencesC1382 m4076(Context context, String str, C0902 c0902) {
        ٴʼ m7490;
        String str2 = c0902.f3820;
        AbstractC3023.m6551();
        AbstractC3287.m7102();
        Context applicationContext = context.getApplicationContext();
        C2760 c2760 = new C2760();
        c2760.f10516 = ﹳٴ.ʻٴ("AES256_SIV");
        if (applicationContext == null) {
            throw new IllegalArgumentException("need an Android context");
        }
        c2760.f10517 = applicationContext;
        c2760.f10511 = "__androidx_security_crypto_encrypted_prefs_key_keyset__";
        c2760.f10513 = str;
        String m3771 = AbstractC1220.m3771("android-keystore://", str2);
        if (!m3771.startsWith("android-keystore://")) {
            throw new IllegalArgumentException("key URI must start with android-keystore://");
        }
        c2760.f10518 = m3771;
        C1938 m6161 = c2760.m6161();
        synchronized (m6161) {
            m7490 = m6161.f7699.m7490();
        }
        C2760 c27602 = new C2760();
        c27602.f10516 = ﹳٴ.ʻٴ("AES256_GCM");
        c27602.f10517 = applicationContext;
        c27602.f10511 = "__androidx_security_crypto_encrypted_prefs_value_keyset__";
        c27602.f10513 = str;
        String m37712 = AbstractC1220.m3771("android-keystore://", str2);
        if (!m37712.startsWith("android-keystore://")) {
            throw new IllegalArgumentException("key URI must start with android-keystore://");
        }
        c27602.f10518 = m37712;
        ٴʼ m4897 = c27602.m6161().m4897();
        InterfaceC3535 interfaceC3535 = (InterfaceC3535) m7490.ˈⁱ(InterfaceC3535.class);
        return new SharedPreferencesC1382(str, applicationContext.getSharedPreferences(str, 0), (InterfaceC3536) m4897.ˈⁱ(InterfaceC3536.class), interfaceC3535);
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        if (m4075(str)) {
            throw new SecurityException(AbstractC1220.m3791(str, " is a reserved key for the encryption keyset."));
        }
        return this.f5431.contains(m4078(str));
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        return new SharedPreferencesEditorC1383(this, this.f5431.edit());
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : this.f5431.getAll().entrySet()) {
            if (!m4075(entry.getKey())) {
                try {
                    String str = new String(this.f5429.mo6547(AbstractC5087.m9992(entry.getKey()), this.f5427.getBytes()), StandardCharsets.UTF_8);
                    if (str.equals("__NULL__")) {
                        str = null;
                    }
                    hashMap.put(str, m4077(str));
                } catch (GeneralSecurityException e) {
                    throw new SecurityException("Could not decrypt key. " + e.getMessage(), e);
                }
            }
        }
        return hashMap;
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        Object m4077 = m4077(str);
        return m4077 instanceof Boolean ? ((Boolean) m4077).booleanValue() : z;
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f) {
        Object m4077 = m4077(str);
        return m4077 instanceof Float ? ((Float) m4077).floatValue() : f;
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i) {
        Object m4077 = m4077(str);
        return m4077 instanceof Integer ? ((Integer) m4077).intValue() : i;
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j) {
        Object m4077 = m4077(str);
        return m4077 instanceof Long ? ((Long) m4077).longValue() : j;
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) {
        Object m4077 = m4077(str);
        return m4077 instanceof String ? (String) m4077 : str2;
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        Object m4077 = m4077(str);
        Set c3370 = m4077 instanceof Set ? (Set) m4077 : new C3370(0);
        return c3370.size() > 0 ? c3370 : set;
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f5430.add(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f5430.remove(onSharedPreferenceChangeListener);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object m4077(String str) {
        String str2;
        if (m4075(str)) {
            throw new SecurityException(AbstractC1220.m3791(str, " is a reserved key for the encryption keyset."));
        }
        if (str == null) {
            str = "__NULL__";
        }
        try {
            String m4078 = m4078(str);
            String string = this.f5431.getString(m4078, null);
            if (string != null) {
                byte[] m9992 = AbstractC5087.m9992(string);
                InterfaceC3536 interfaceC3536 = this.f5428;
                Charset charset = StandardCharsets.UTF_8;
                ByteBuffer wrap = ByteBuffer.wrap(interfaceC3536.mo4895(m9992, m4078.getBytes(charset)));
                wrap.position(0);
                int i = wrap.getInt();
                int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? 0 : 6 : 5 : 4 : 3 : 2 : 1;
                if (i2 == 0) {
                    throw new SecurityException("Unknown type ID for encrypted pref value: " + i);
                }
                int m3018 = AbstractC0844.m3018(i2);
                if (m3018 == 0) {
                    int i3 = wrap.getInt();
                    ByteBuffer slice = wrap.slice();
                    wrap.limit(i3);
                    String charBuffer = charset.decode(slice).toString();
                    if (!charBuffer.equals("__NULL__")) {
                        return charBuffer;
                    }
                } else {
                    if (m3018 != 1) {
                        if (m3018 == 2) {
                            return Integer.valueOf(wrap.getInt());
                        }
                        if (m3018 == 3) {
                            return Long.valueOf(wrap.getLong());
                        }
                        if (m3018 == 4) {
                            return Float.valueOf(wrap.getFloat());
                        }
                        if (m3018 == 5) {
                            return Boolean.valueOf(wrap.get() != 0);
                        }
                        switch (i2) {
                            case 1:
                                str2 = "STRING";
                                break;
                            case 2:
                                str2 = "STRING_SET";
                                break;
                            case 3:
                                str2 = "INT";
                                break;
                            case 4:
                                str2 = "LONG";
                                break;
                            case 5:
                                str2 = "FLOAT";
                                break;
                            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                                str2 = "BOOLEAN";
                                break;
                            default:
                                str2 = "null";
                                break;
                        }
                        throw new SecurityException("Unhandled type for encrypted pref value: ".concat(str2));
                    }
                    C3370 c3370 = new C3370(0);
                    while (wrap.hasRemaining()) {
                        int i4 = wrap.getInt();
                        ByteBuffer slice2 = wrap.slice();
                        slice2.limit(i4);
                        wrap.position(wrap.position() + i4);
                        c3370.add(StandardCharsets.UTF_8.decode(slice2).toString());
                    }
                    if (c3370.f13176 != 1 || !"__NULL__".equals(c3370.f13178[0])) {
                        return c3370;
                    }
                }
            }
            return null;
        } catch (GeneralSecurityException e) {
            throw new SecurityException("Could not decrypt value. " + e.getMessage(), e);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m4078(String str) {
        if (str == null) {
            str = "__NULL__";
        }
        try {
            try {
                return new String(AbstractC5087.m9991(this.f5429.mo6548(str.getBytes(StandardCharsets.UTF_8), this.f5427.getBytes())), "US-ASCII");
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        } catch (GeneralSecurityException e2) {
            throw new SecurityException("Could not encrypt key. " + e2.getMessage(), e2);
        }
    }
}
