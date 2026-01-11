package p404;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import ar.tvplayer.tv.R;
import com.bumptech.glide.C0229;
import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.parse.ʼᐧ;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicMarkableReference;
import p017.AbstractC0993;
import p017.C0987;
import p021.AbstractC1031;
import p027.RunnableC1101;
import p042.C1317;
import p042.C1319;
import p052.C1408;
import p055.AbstractC1445;
import p055.C1467;
import p055.InterfaceC1488;
import p070.C1629;
import p105.AbstractC1930;
import p105.C1924;
import p105.C1927;
import p105.C1932;
import p105.InterfaceC1922;
import p122.AbstractC2120;
import p122.C2038;
import p122.C2049;
import p122.C2058;
import p122.C2066;
import p122.C2068;
import p122.C2069;
import p122.C2075;
import p122.C2092;
import p122.C2096;
import p131.C2194;
import p137.AbstractC2281;
import p137.C2241;
import p137.C2282;
import p137.C2284;
import p139.C2357;
import p187.C2841;
import p220.C3027;
import p220.C3029;
import p220.C3032;
import p229.C3125;
import p234.C3194;
import p234.C3195;
import p245.C3261;
import p245.C3275;
import p252.C3309;
import p262.C3433;
import p287.C3588;
import p305.AbstractC3712;
import p318.C3919;
import p330.EnumC4150;
import p330.EnumC4167;
import p349.AbstractC4293;
import p366.C4473;
import p392.C4644;
import p392.C4682;
import p411.C4887;
import p411.C4888;
import p411.C4891;
import p411.C4905;
import p411.C4906;
import p411.C4907;
import p420.C4987;

/* renamed from: ﹳʽ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4799 implements InterfaceC4789 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f18049;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object f18050;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f18051;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Object f18052;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f18053;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object f18054;

    public /* synthetic */ C4799(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        this.f18050 = obj;
        this.f18053 = obj2;
        this.f18049 = obj3;
        this.f18051 = obj4;
        this.f18054 = obj5;
        this.f18052 = obj6;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static ColorStateList m9579(Context context, int i) {
        int m5323 = AbstractC2281.m5323(context, R.attr.56h);
        return new ColorStateList(new int[][]{AbstractC2281.f8921, AbstractC2281.f8918, AbstractC2281.f8917, AbstractC2281.f8923}, new int[]{AbstractC2281.m5325(context, R.attr.1ia), AbstractC4293.m8698(m5323, i), AbstractC4293.m8698(m5323, i), i});
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static C4987 m9580(InterfaceC1488 interfaceC1488, AbstractC0993 abstractC0993, C4987 c4987, C1467 c1467) {
        int mo4228;
        C4644 c4644 = (C4644) interfaceC1488;
        AbstractC1445 m9254 = c4644.m9254();
        c4644.m9241();
        if (c4644.f17415.f17591.m4217()) {
            mo4228 = 0;
        } else {
            C4682 c4682 = c4644.f17415;
            mo4228 = c4682.f17591.mo4228(c4682.f17590.f18631);
        }
        Object mo4230 = m9254.m4217() ? null : m9254.mo4230(mo4228);
        int m4273 = (c4644.m9246() || m9254.m4217()) ? -1 : m9254.mo4231(mo4228, c1467, false).m4273(AbstractC3712.m7757(c4644.m9242()) - c1467.f5746);
        for (int i = 0; i < abstractC0993.size(); i++) {
            C4987 c49872 = (C4987) abstractC0993.get(i);
            if (m9585(c49872, mo4230, c4644.m9246(), c4644.m9258(), c4644.m9231(), m4273)) {
                return c49872;
            }
        }
        if (abstractC0993.isEmpty() && c4987 != null && m9585(c4987, mo4230, c4644.m9246(), c4644.m9258(), c4644.m9231(), m4273)) {
            return c4987;
        }
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m9581(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static void m9582(Drawable drawable, int i, PorterDuff.Mode mode) {
        Drawable mutate = drawable.mutate();
        if (mode == null) {
            mode = C2284.f8941;
        }
        mutate.setColorFilter(C2284.m5329(i, mode));
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static LayerDrawable m9583(C2241 c2241, Context context, int i) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        Drawable m5255 = c2241.m5255(context, R.drawable.1di);
        Drawable m52552 = c2241.m5255(context, R.drawable.4q4);
        if ((m5255 instanceof BitmapDrawable) && m5255.getIntrinsicWidth() == dimensionPixelSize && m5255.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) m5255;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            m5255.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            m5255.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((m52552 instanceof BitmapDrawable) && m52552.getIntrinsicWidth() == dimensionPixelSize && m52552.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) m52552;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            m52552.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            m52552.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object, ﹳʽ.ᴵᵔ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C4799 m9584(Context context, C4887 c4887, C3194 c3194, C4906 c4906, C1927 c1927, C2282 c2282, C3433 c3433, C1629 c1629, C3125 c3125, C4888 c4888, C2194 c2194) {
        C4907 c4907 = new C4907(context, c4887, c4906, c3433, c1629);
        C3195 c3195 = new C3195(c3194, c1629, c4888);
        C2841 c2841 = C1319.f5062;
        C2357.m5443(context);
        C1319 c1319 = new C1319(new C1317(C2357.m5444().m5445(new C3588(C1319.f5059, C1319.f5060)).m5446("FIREBASE_CRASHLYTICS_REPORT", new C3919("json"), C1319.f5061), c1629.m4410(), c3125));
        ?? obj = new Object();
        obj.f18050 = c4907;
        obj.f18053 = c3195;
        obj.f18049 = c1319;
        obj.f18051 = c1927;
        obj.f18054 = c2282;
        obj.f18052 = c4887;
        return obj;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static boolean m9585(C4987 c4987, Object obj, boolean z, int i, int i2, int i3) {
        Object obj2 = c4987.f18631;
        int i4 = c4987.f18630;
        if (!obj2.equals(obj)) {
            return false;
        }
        if (z && i4 == i && c4987.f18627 == i2) {
            return true;
        }
        return !z && i4 == -1 && c4987.f18629 == i3;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C4799 m9586(String str, AbstractC0744 abstractC0744, EnumC4167 enumC4167, EnumC4150 enumC4150, Integer num) {
        if (enumC4150 == EnumC4150.f15581) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new C4799(str, AbstractC4804.m9603(str), abstractC0744, enumC4167, enumC4150, num);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [ˈˋ.ˏᵢ, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static AbstractC2120 m9587(C2075 c2075, C2282 c2282) {
        List m4148 = ((C1408) c2282.f8930).m4148();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < m4148.size(); i++) {
            AbstractC1930 abstractC1930 = (AbstractC1930) m4148.get(i);
            abstractC1930.getClass();
            ?? obj = new Object();
            C1932 c1932 = (C1932) abstractC1930;
            String str = c1932.f7684;
            if (str == null) {
                throw new NullPointerException("Null variantId");
            }
            String str2 = c1932.f7685;
            if (str2 == null) {
                throw new NullPointerException("Null rolloutId");
            }
            obj.f8124 = new C2038(str2, str);
            String str3 = c1932.f7682;
            if (str3 == null) {
                throw new NullPointerException("Null parameterKey");
            }
            obj.f8123 = str3;
            String str4 = c1932.f7683;
            if (str4 == null) {
                throw new NullPointerException("Null parameterValue");
            }
            obj.f8120 = str4;
            obj.f8121 = c1932.f7686;
            obj.f8122 = (byte) (obj.f8122 | 1);
            arrayList.add(obj.m5077());
        }
        if (arrayList.isEmpty()) {
            return c2075;
        }
        C2058 m5078 = c2075.m5078();
        m5078.f8064 = new C2068(arrayList);
        return m5078.m5076();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2075 m9588(C2075 c2075, C1927 c1927, C2282 c2282, Map map) {
        Map unmodifiableMap;
        C2058 m5078 = c2075.m5078();
        String mo4862 = ((InterfaceC1922) c1927.f7668).mo4862();
        if (mo4862 != null) {
            m5078.f8060 = new C2092(mo4862);
        } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        C0229 c0229 = (C0229) c2282.f8925;
        if (map.isEmpty()) {
            unmodifiableMap = ((C1924) ((AtomicMarkableReference) c0229.f1646).getReference()).m4868();
        } else {
            HashMap hashMap = new HashMap(((C1924) ((AtomicMarkableReference) c0229.f1646).getReference()).m4868());
            int i = 0;
            for (Map.Entry entry : map.entrySet()) {
                String m4865 = C1924.m4865(1024, (String) entry.getKey());
                if (hashMap.size() < 64 || hashMap.containsKey(m4865)) {
                    hashMap.put(m4865, C1924.m4865(1024, (String) entry.getValue()));
                } else {
                    i++;
                }
            }
            if (i > 0) {
                String str = "Ignored " + i + " keys when adding event specific keys. Maximum allowable: 1024";
            }
            unmodifiableMap = DesugarCollections.unmodifiableMap(hashMap);
        }
        List m9589 = m9589(unmodifiableMap);
        List m95892 = m9589(((C1924) ((AtomicMarkableReference) ((C0229) c2282.f8926).f1646).getReference()).m4868());
        if (!m9589.isEmpty() || !m95892.isEmpty()) {
            C2069 c2069 = (C2069) c2075.f8131;
            m5078.f8058 = new C2069(c2069.f8111, m9589, m95892, c2069.f8107, c2069.f8108, c2069.f8112, c2069.f8109);
        }
        return m5078.m5076();
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static List m9589(Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str == null) {
                throw new NullPointerException("Null key");
            }
            String str2 = (String) entry.getValue();
            if (str2 == null) {
                throw new NullPointerException("Null value");
            }
            arrayList.add(new C2066(str, str2));
        }
        Collections.sort(arrayList, new ʼᐧ(15));
        return DesugarCollections.unmodifiableList(arrayList);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static String m9590(InputStream inputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        String byteArrayOutputStream2 = byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
                        byteArrayOutputStream.close();
                        bufferedInputStream.close();
                        return byteArrayOutputStream2;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void m9591(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f18052 = Integer.valueOf(i);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m9592(ʽﹳ r3, C4987 c4987, AbstractC1445 abstractC1445) {
        if (c4987 == null) {
            return;
        }
        if (abstractC1445.mo4228(c4987.f18631) != -1) {
            r3.ʼʼ(c4987, abstractC1445);
            return;
        }
        AbstractC1445 abstractC14452 = (AbstractC1445) ((C0987) this.f18049).get(c4987);
        if (abstractC14452 != null) {
            r3.ʼʼ(c4987, abstractC14452);
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public void m9593(AbstractC1445 abstractC1445) {
        ʽﹳ r0 = new ʽﹳ(4);
        if (((AbstractC0993) this.f18053).isEmpty()) {
            m9592(r0, (C4987) this.f18054, abstractC1445);
            if (!Objects.equals((C4987) this.f18052, (C4987) this.f18054)) {
                m9592(r0, (C4987) this.f18052, abstractC1445);
            }
            if (!Objects.equals((C4987) this.f18051, (C4987) this.f18054) && !Objects.equals((C4987) this.f18051, (C4987) this.f18052)) {
                m9592(r0, (C4987) this.f18051, abstractC1445);
            }
        } else {
            for (int i = 0; i < ((AbstractC0993) this.f18053).size(); i++) {
                m9592(r0, (C4987) ((AbstractC0993) this.f18053).get(i), abstractC1445);
            }
            if (!((AbstractC0993) this.f18053).contains((C4987) this.f18051)) {
                m9592(r0, (C4987) this.f18051, abstractC1445);
            }
        }
        this.f18049 = r0.ˑﹳ();
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public ColorStateList m9594(Context context, int i) {
        if (i == R.drawable.1p4) {
            return AbstractC1031.m3358(context, R.color.467);
        }
        if (i == 2131230835) {
            return AbstractC1031.m3358(context, R.color.79d);
        }
        if (i != R.drawable.6kt) {
            if (i == R.drawable.2g) {
                return m9579(context, AbstractC2281.m5323(context, R.attr.1ia));
            }
            if (i == R.drawable.6k9) {
                return m9579(context, 0);
            }
            if (i == R.drawable.4kv) {
                return m9579(context, AbstractC2281.m5323(context, R.attr.2cp));
            }
            if (i == 2131230830 || i == R.drawable.36q) {
                return AbstractC1031.m3358(context, R.color.103);
            }
            if (m9581((int[]) this.f18053, i)) {
                return AbstractC2281.m5324(context, R.attr.2n4);
            }
            if (m9581((int[]) this.f18054, i)) {
                return AbstractC1031.m3358(context, R.color.47f);
            }
            if (m9581((int[]) this.f18052, i)) {
                return AbstractC1031.m3358(context, R.color.450);
            }
            if (i == R.drawable.78i) {
                return AbstractC1031.m3358(context, R.color.6pj);
            }
            return null;
        }
        int[][] iArr = new int[3];
        int[] iArr2 = new int[3];
        ColorStateList m5324 = AbstractC2281.m5324(context, R.attr.iq);
        if (m5324 == null || !m5324.isStateful()) {
            iArr[0] = AbstractC2281.f8921;
            iArr2[0] = AbstractC2281.m5325(context, R.attr.iq);
            iArr[1] = AbstractC2281.f8919;
            iArr2[1] = AbstractC2281.m5323(context, R.attr.46k);
            iArr[2] = AbstractC2281.f8923;
            iArr2[2] = AbstractC2281.m5323(context, R.attr.iq);
        } else {
            int[] iArr3 = AbstractC2281.f8921;
            iArr[0] = iArr3;
            iArr2[0] = m5324.getColorForState(iArr3, 0);
            iArr[1] = AbstractC2281.f8919;
            iArr2[1] = AbstractC2281.m5323(context, R.attr.46k);
            iArr[2] = AbstractC2281.f8923;
            iArr2[2] = m5324.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C3029 m9595(Executor executor, String str) {
        C4905 c4905;
        C3032 c3032;
        ArrayList m7034 = ((C3195) this.f18053).m7034();
        ArrayList arrayList = new ArrayList();
        int size = m7034.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            File file = (File) m7034.get(i);
            try {
                C2841 c2841 = C3195.f12222;
                String m7029 = C3195.m7029(file);
                c2841.getClass();
                arrayList.add(new C4905(C2841.m6304(m7029), file.getName(), file));
            } catch (IOException e) {
                String str2 = "Could not load report file " + file + "; deleting";
                file.delete();
            }
            i = i2;
        }
        ArrayList arrayList2 = new ArrayList();
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj = arrayList.get(i3);
            i3++;
            C4905 c49052 = (C4905) obj;
            if (str == null || str.equals(c49052.f18306)) {
                C1319 c1319 = (C1319) this.f18049;
                C2096 c2096 = c49052.f18307;
                if (c2096.f8205 == null || c2096.f8201 == null) {
                    C4891 m9677 = ((C4887) this.f18052).m9677(true);
                    C2096 c20962 = c49052.f18307;
                    String str3 = m9677.f18241;
                    C2049 m5081 = c20962.m5081();
                    m5081.f8003 = str3;
                    C2096 m5073 = m5081.m5073();
                    String str4 = m9677.f18240;
                    C2049 m50812 = m5073.m5081();
                    m50812.f8010 = str4;
                    c4905 = new C4905(m50812.m5073(), c49052.f18306, c49052.f18305);
                } else {
                    c4905 = c49052;
                }
                boolean z = str != null;
                C1317 c1317 = c1319.f5063;
                synchronized (c1317.f5054) {
                    try {
                        C3032 c30322 = new C3032();
                        if (z) {
                            ((AtomicInteger) c1317.f5044.f11943).getAndIncrement();
                            if (c1317.f5054.size() < c1317.f5048) {
                                C3309 c3309 = C3309.f12735;
                                c3309.m7123("Enqueueing report: " + c4905.f18306);
                                c3309.m7123("Queue size: " + c1317.f5054.size());
                                c3032 = c30322;
                                c1317.f5050.execute(new RunnableC1101(c1317, c4905, c30322, 2, false));
                                c3309.m7123("Closing task for report: " + c4905.f18306);
                                c3032.m6577(c4905);
                            } else {
                                c3032 = c30322;
                                c1317.m3944();
                                String str5 = "Dropping report due to queue being full: " + c4905.f18306;
                                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                }
                                ((AtomicInteger) c1317.f5044.f11941).getAndIncrement();
                                c3032.m6577(c4905);
                            }
                        } else {
                            c3032 = c30322;
                            c1317.m3943(c4905, c3032);
                        }
                    } finally {
                    }
                }
                C3029 c3029 = c3032.f11560;
                C4473 c4473 = new C4473(25, this);
                c3029.getClass();
                C3029 c30292 = new C3029();
                c3029.f11553.m1588(new C3027(executor, c4473, c30292, 0));
                c3029.m6568();
                arrayList2.add(c30292);
            }
        }
        return ᵎ.ʻٴ(arrayList2);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public void m9596(int i) {
        if (i < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(i)));
        }
        this.f18049 = Integer.valueOf(i);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C3275 m9597() {
        if (((Integer) this.f18052) == null) {
            throw new GeneralSecurityException("AES key size is not set");
        }
        if (((Integer) this.f18050) == null) {
            throw new GeneralSecurityException("HMAC key size is not set");
        }
        if (((Integer) this.f18053) == null) {
            throw new GeneralSecurityException("iv size is not set");
        }
        Integer num = (Integer) this.f18049;
        if (num == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (((C3261) this.f18051) == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (((C3261) this.f18054) == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        int intValue = num.intValue();
        C3261 c3261 = (C3261) this.f18051;
        if (c3261 == C3261.f12548) {
            if (intValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num));
            }
        } else if (c3261 == C3261.f12554) {
            if (intValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num));
            }
        } else if (c3261 == C3261.f12561) {
            if (intValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num));
            }
        } else if (c3261 == C3261.f12578) {
            if (intValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num));
            }
        } else {
            if (c3261 != C3261.f12571) {
                throw new GeneralSecurityException("unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512");
            }
            if (intValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num));
            }
        }
        return new C3275(((Integer) this.f18052).intValue(), ((Integer) this.f18050).intValue(), ((Integer) this.f18053).intValue(), ((Integer) this.f18049).intValue(), (C3261) this.f18054, (C3261) this.f18051);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public void m9598(int i) {
        if (i < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; HMAC key must be at least 16 bytes", Integer.valueOf(i)));
        }
        this.f18050 = Integer.valueOf(i);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public void m9599(int i) {
        if (i < 12 || i > 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes", Integer.valueOf(i)));
        }
        this.f18053 = Integer.valueOf(i);
    }
}
