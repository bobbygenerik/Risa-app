package p349;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import j$.util.Objects;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import p143.C2388;
import p143.C2395;
import p360.C4369;
import ﹳˋ.ٴﹶ;

/* renamed from: ᵎⁱ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4286 extends ٴﹶ {
    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public static int m8665(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static Font m8666(FontFamily fontFamily, int i) {
        FontStyle fontStyle = new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int m8665 = m8665(fontStyle, font.getStyle());
        for (int i2 = 1; i2 < fontFamily.getSize(); i2++) {
            Font font2 = fontFamily.getFont(i2);
            int m86652 = m8665(fontStyle, font2.getStyle());
            if (m86652 < m8665) {
                font = font2;
                m8665 = m86652;
            }
        }
        return font;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Typeface m8667(Context context, C2388 c2388, Resources resources, int i) {
        try {
            FontFamily.Builder builder = null;
            for (C2395 c2395 : c2388.f9216) {
                try {
                    Font build = new Font.Builder(resources, c2395.f9256).setWeight(c2395.f9254).setSlant(c2395.f9251 ? 1 : 0).setTtcIndex(c2395.f9253).setFontVariationSettings(c2395.f9252).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily build2 = builder.build();
            return new Typeface.CustomFallbackBuilder(build2).setStyle(m8666(build2, i).getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final Typeface m8668(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final FontFamily m8669(C4369[] c4369Arr, ContentResolver contentResolver) {
        Font font;
        String str;
        ParcelFileDescriptor openFileDescriptor;
        FontFamily.Builder builder = null;
        for (C4369 c4369 : c4369Arr) {
            if (!Objects.equals(c4369.f16225.getScheme(), "systemfont")) {
                try {
                    Uri uri = c4369.f16225;
                    str = c4369.f16223;
                    openFileDescriptor = contentResolver.openFileDescriptor(uri, "r", null);
                } catch (IOException e) {
                }
                if (openFileDescriptor != null) {
                    try {
                        Font.Builder ttcIndex = new Font.Builder(openFileDescriptor).setWeight(c4369.f16221).setSlant(c4369.f16222 ? 1 : 0).setTtcIndex(c4369.f16224);
                        if (!TextUtils.isEmpty(str)) {
                            ttcIndex.setFontVariationSettings(str);
                        }
                        font = ttcIndex.build();
                        openFileDescriptor.close();
                    } catch (Throwable th) {
                        try {
                            openFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                        break;
                    }
                } else {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    font = null;
                }
            } else {
                font = mo8672(c4369);
            }
            if (font != null) {
                if (builder == null) {
                    builder = new FontFamily.Builder(font);
                } else {
                    builder.addFont(font);
                }
            }
        }
        if (builder == null) {
            return null;
        }
        return builder.build();
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final C4369 m8670(C4369[] c4369Arr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Typeface m8671(Context context, C4369[] c4369Arr, int i) {
        try {
            FontFamily m8669 = m8669(c4369Arr, context.getContentResolver());
            if (m8669 == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(m8669).setStyle(m8666(m8669, i).getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public Font mo8672(C4369 c4369) {
        throw new UnsupportedOperationException("Getting font from Typeface is not supported before API31");
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final Typeface m8673(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final Typeface m8674(Context context, List list, int i) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily m8669 = m8669((C4369[]) list.get(0), contentResolver);
            if (m8669 == null) {
                return null;
            }
            Typeface.CustomFallbackBuilder customFallbackBuilder = new Typeface.CustomFallbackBuilder(m8669);
            for (int i2 = 1; i2 < list.size(); i2++) {
                FontFamily m86692 = m8669((C4369[]) list.get(i2), contentResolver);
                if (m86692 != null) {
                    customFallbackBuilder.addCustomFallback(m86692);
                }
            }
            return customFallbackBuilder.setStyle(m8666(m8669, i).getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }
}
