package p349;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.text.PositionedGlyphs;
import android.graphics.text.TextRunShaper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import androidx.leanback.widget.RunnableC0114;
import com.bumptech.glide.ʽ;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p003.RunnableC0786;
import p027.C1082;
import p027.RunnableC1101;
import p143.AbstractC2392;
import p143.C2388;
import p143.C2390;
import p143.InterfaceC2387;
import p179.C2713;
import p179.ExecutorC2748;
import p179.RunnableC2689;
import p186.AbstractC2775;
import p229.C3125;
import p255.C3368;
import p360.AbstractC4368;
import p360.C4366;
import p360.C4372;
import p360.CallableC4367;
import ﹳˋ.ٴﹶ;

/* renamed from: ᵎⁱ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4288 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Paint f15873;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2713 f15874;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ٴﹶ f15875;

    static {
        Trace.beginSection(ʽ.ˊʻ("TypefaceCompat static init"));
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            f15875 = new ٴﹶ();
        } else if (i >= 29) {
            f15875 = new ٴﹶ();
        } else if (i >= 28) {
            f15875 = new C4291();
        } else if (i >= 26) {
            f15875 = new C4291();
        } else {
            if (i >= 24) {
                Method method = C4290.f15876;
                if (method == null) {
                }
                if (method != null) {
                    f15875 = new ٴﹶ();
                }
            }
            f15875 = new ٴﹶ();
        }
        f15874 = new C2713(16);
        f15873 = null;
        Trace.endSection();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Typeface m8677(String str) {
        if (str != null && !str.isEmpty()) {
            Typeface create = Typeface.create(str, 0);
            Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
            if (create != null && !create.equals(create2)) {
                return create;
            }
        }
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Font m8678(Typeface typeface) {
        if (f15873 == null) {
            f15873 = new Paint();
        }
        f15873.setTextSize(10.0f);
        f15873.setTypeface(typeface);
        PositionedGlyphs shapeTextRun = TextRunShaper.shapeTextRun((CharSequence) " ", 0, 1, 0, 1, 0.0f, 0.0f, false, f15873);
        if (shapeTextRun.glyphCount() == 0) {
            return null;
        }
        return shapeTextRun.getFont(0);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m8679(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Typeface m8680(Context context, InterfaceC2387 interfaceC2387, Resources resources, int i, String str, int i2, int i3, AbstractC2392 abstractC2392, boolean z) {
        Typeface typeface;
        Typeface build;
        FontFamily build2;
        int i4 = 14;
        int i5 = -3;
        if (interfaceC2387 instanceof C2390) {
            C2390 c2390 = (C2390) interfaceC2387;
            String str2 = c2390.f9221;
            typeface = null;
            boolean z2 = false;
            if (TextUtils.isEmpty(str2) || (build = m8677(str2)) == null) {
                ArrayList arrayList = c2390.f9223;
                if (arrayList.size() == 1) {
                    build = m8677(((C4366) arrayList.get(0)).f16207);
                } else {
                    if (Build.VERSION.SDK_INT >= 31) {
                        int i6 = 0;
                        while (true) {
                            if (i6 >= arrayList.size()) {
                                Typeface.CustomFallbackBuilder customFallbackBuilder = null;
                                int i7 = 0;
                                while (true) {
                                    if (i7 >= arrayList.size()) {
                                        break;
                                    }
                                    C4366 c4366 = (C4366) arrayList.get(i7);
                                    if (i7 == arrayList.size() - 1 && TextUtils.isEmpty(c4366.f16211)) {
                                        customFallbackBuilder.setSystemFallback(c4366.f16207);
                                        break;
                                    }
                                    String str3 = c4366.f16207;
                                    String str4 = c4366.f16211;
                                    Font m8678 = m8678(m8677(str3));
                                    if (m8678 == null) {
                                        String str5 = "Unable identify the primary font for " + c4366.f16207 + ". Falling back to provider font.";
                                        break;
                                    }
                                    if (TextUtils.isEmpty(str4)) {
                                        try {
                                            build2 = new FontFamily.Builder(AbstractC2775.m6170(m8678).setFontVariationSettings(str4).build()).build();
                                        } catch (IOException unused) {
                                        }
                                    } else {
                                        build2 = new FontFamily.Builder(m8678).build();
                                    }
                                    if (customFallbackBuilder == null) {
                                        customFallbackBuilder = new Typeface.CustomFallbackBuilder(build2);
                                    } else {
                                        customFallbackBuilder.addCustomFallback(build2);
                                    }
                                    i7++;
                                }
                                build = customFallbackBuilder.build();
                            } else {
                                if (m8677(((C4366) arrayList.get(i6)).f16207) == null) {
                                    break;
                                }
                                i6++;
                            }
                        }
                    }
                    build = null;
                }
            }
            if (build != null) {
                if (abstractC2392 != null) {
                    new Handler(Looper.getMainLooper()).post(new RunnableC0786(abstractC2392, i4, build));
                }
                f15874.m6095(m8679(resources, i, str, i2, i3), build);
                return build;
            }
            boolean z3 = !z ? abstractC2392 != null : c2390.f9220 != 0;
            int i8 = z ? c2390.f9222 : -1;
            Handler handler = new Handler(Looper.getMainLooper());
            ᐧﹳ.ʽ r12 = new ᐧﹳ.ʽ(4, false);
            r12.ᴵˊ = abstractC2392;
            ArrayList arrayList2 = c2390.f9223;
            ExecutorC2748 executorC2748 = new ExecutorC2748(handler);
            C3125 c3125 = new C3125(r12, 16, executorC2748);
            int i9 = 3;
            int i10 = 22;
            if (!z3) {
                String m8842 = AbstractC4368.m8842(i3, arrayList2);
                Typeface typeface2 = (Typeface) AbstractC4368.f16220.m6090(m8842);
                if (typeface2 != null) {
                    executorC2748.execute(new RunnableC2689(r12, typeface2, i10, z2));
                    typeface = typeface2;
                } else {
                    C1082 c1082 = new C1082(2, c3125);
                    synchronized (AbstractC4368.f16217) {
                        try {
                            C3368 c3368 = AbstractC4368.f16218;
                            ArrayList arrayList3 = (ArrayList) c3368.get(m8842);
                            if (arrayList3 != null) {
                                arrayList3.add(c1082);
                            } else {
                                ArrayList arrayList4 = new ArrayList();
                                arrayList4.add(c1082);
                                c3368.put(m8842, arrayList4);
                                CallableC4367 callableC4367 = new CallableC4367(m8842, context, arrayList2, i3, 1);
                                ThreadPoolExecutor threadPoolExecutor = AbstractC4368.f16219;
                                C1082 c10822 = new C1082(i9, m8842);
                                Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                                RunnableC1101 runnableC1101 = new RunnableC1101();
                                runnableC1101.f4297 = callableC4367;
                                runnableC1101.f4294 = c10822;
                                runnableC1101.f4296 = handler2;
                                threadPoolExecutor.execute(runnableC1101);
                            }
                        } finally {
                        }
                    }
                }
            } else {
                if (arrayList2.size() > 1) {
                    throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
                }
                C4366 c43662 = (C4366) arrayList2.get(0);
                C2713 c2713 = AbstractC4368.f16220;
                ArrayList arrayList5 = new ArrayList(1);
                Object obj = new Object[]{c43662}[0];
                Objects.requireNonNull(obj);
                arrayList5.add(obj);
                String m88422 = AbstractC4368.m8842(i3, DesugarCollections.unmodifiableList(arrayList5));
                Typeface typeface3 = (Typeface) AbstractC4368.f16220.m6090(m88422);
                if (typeface3 != null) {
                    executorC2748.execute(new RunnableC2689(r12, typeface3, i10, z2));
                    typeface = typeface3;
                } else if (i8 == -1) {
                    Object[] objArr = {c43662};
                    ArrayList arrayList6 = new ArrayList(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    arrayList6.add(obj2);
                    C4372 m8841 = AbstractC4368.m8841(m88422, context, DesugarCollections.unmodifiableList(arrayList6), i3);
                    c3125.m6824(m8841);
                    typeface = m8841.f16231;
                } else {
                    try {
                        try {
                            try {
                                C4372 c4372 = (C4372) AbstractC4368.f16219.submit(new CallableC4367(m88422, context, c43662, i3, 0)).get(i8, TimeUnit.MILLISECONDS);
                                c3125.m6824(c4372);
                                typeface = c4372.f16231;
                            } catch (InterruptedException e) {
                                throw e;
                            }
                        } catch (ExecutionException e2) {
                            throw new RuntimeException(e2);
                        } catch (TimeoutException unused2) {
                            throw new InterruptedException("timeout");
                        }
                    } catch (InterruptedException unused3) {
                        ((ExecutorC2748) c3125.f11941).execute(new RunnableC0114(i5, i9, (ᐧﹳ.ʽ) c3125.f11943));
                    }
                }
            }
        } else {
            typeface = f15875.ˆʾ(context, (C2388) interfaceC2387, resources, i3);
            if (abstractC2392 != null) {
                if (typeface != null) {
                    new Handler(Looper.getMainLooper()).post(new RunnableC0786(abstractC2392, i4, typeface));
                } else {
                    abstractC2392.m5498(-3);
                }
            }
        }
        if (typeface != null) {
            f15874.m6095(m8679(resources, i, str, i2, i3), typeface);
        }
        return typeface;
    }
}
