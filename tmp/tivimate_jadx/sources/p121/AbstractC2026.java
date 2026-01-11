package p121;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.security.keystore.KeyGenParameterSpec;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import ar.tvplayer.core.data.api.xtreamcodes.SeriesCategory;
import ar.tvplayer.core.domain.F;
import ar.tvplayer.core.domain.ᵎⁱ;
import ar.tvplayer.tv.R;
import ar.tvplayer.tv.unlock.ui.UnlockPremiumActivity;
import com.bumptech.glide.C0233;
import com.bumptech.glide.C0237;
import com.bumptech.glide.ComponentCallbacks2C0238;
import com.bumptech.glide.integration.okhttp3.OkHttpGlideModule;
import com.bumptech.glide.load.data.C0219;
import com.bumptech.glide.load.data.C0224;
import com.google.android.gms.internal.play_billing.C0580;
import com.google.android.gms.internal.play_billing.C0591;
import com.google.android.gms.internal.play_billing.C0593;
import com.google.android.gms.internal.play_billing.י;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.regex.Matcher;
import javax.crypto.KeyGenerator;
import p013.C0922;
import p027.C1084;
import p027.C1090;
import p031.InterfaceC1139;
import p035.AbstractC1220;
import p068.C1622;
import p108.C1942;
import p108.C1944;
import p138.C2350;
import p138.C2353;
import p138.C2355;
import p186.AbstractC2823;
import p186.C2811;
import p208.C2968;
import p229.C3085;
import p230.AbstractC3159;
import p257.C3397;
import p257.InterfaceC3396;
import p262.C3433;
import p307.AbstractC3740;
import p312.C3872;
import p331.C4193;
import p331.C4194;
import p331.C4195;
import p335.C4209;
import p363.AbstractActivityC4410;
import p364.C4447;
import p366.C4464;
import p366.C4472;
import p366.C4475;
import p366.C4478;
import p366.C4483;
import p366.C4490;
import p366.C4491;
import p366.C4494;
import p376.C4536;
import p383.C4579;
import p383.C4582;
import p383.C4590;
import p383.C4593;
import p383.C4597;
import p383.C4599;
import p383.C4602;
import p391.C4634;
import p394.AbstractC4710;
import p430.AbstractC5096;
import p435.AbstractC5143;
import p435.C5144;
import p435.C5147;
import p435.C5149;
import p435.C5156;
import p444.C5200;
import ʼ.ᵎﹶ;
import ʼⁱ.ʿ;
import ʼⁱ.ᵎᵔ;
import ʿˋ.ˈ;
import ʿˋ.ˉʿ;
import ʿˋ.ˋᵔ;
import ˉʾ.ʼᐧ;
import ˉʾ.ᵢˏ;
import ˉᵎ.ⁱˊ;
import ᵔᵔ.ˑﹳ;
import ᵢʿ.ﹳٴ;
import ᵢـ.ʼˎ;
import ﹳי.ʽ;

/* renamed from: ˈˊ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2026 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean f7929 = false;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Field f7930 = null;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean f7931 = true;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean f7932;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static Long f7933;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Method f7934;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean f7935;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Field f7936;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, ˋᵔ.ٴʼ] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static boolean m5035(KeyEvent keyEvent, View view) {
        ArrayList arrayList;
        int size;
        int indexOfKey;
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList2 = C2811.f10582;
        C2811 c2811 = (C2811) view.getTag(R.id.5si);
        WeakReference weakReference = null;
        C2811 c28112 = c2811;
        if (c2811 == null) {
            ?? obj = new Object();
            obj.f10585 = null;
            obj.f10584 = null;
            obj.f10583 = null;
            view.setTag(R.id.5si, obj);
            c28112 = obj;
        }
        WeakReference weakReference2 = c28112.f10583;
        if (weakReference2 != null && weakReference2.get() == keyEvent) {
            return false;
        }
        c28112.f10583 = new WeakReference(keyEvent);
        if (c28112.f10584 == null) {
            c28112.f10584 = new SparseArray();
        }
        SparseArray sparseArray = c28112.f10584;
        if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
            weakReference = (WeakReference) sparseArray.valueAt(indexOfKey);
            sparseArray.removeAt(indexOfKey);
        }
        if (weakReference == null) {
            weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReference == null) {
            return false;
        }
        View view2 = (View) weakReference.get();
        if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.3lu)) == null || (size = arrayList.size() - 1) < 0) {
            return true;
        }
        throw AbstractC3740.m7931(size, arrayList);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final void m5036(C3085 c3085, String str) {
        int i;
        ʿ r0 = new ʿ(str);
        byte[] bArr = ⁱˊ.ˈ;
        if (bArr == null || (((byte) (bArr[412] - ʼˎ.ⁱˊ()[412])) == 118 && F.ﹳٴ.sM1eT(412) == bArr[419] + 73)) {
            ᵎⁱ.ـˆ();
        } else {
            ˋᵔ.ˈ = false;
            int i2 = ᵎⁱ.ˑﹳ;
            while (i2 != ᵎⁱ.ˑﹳ + 0.1d) {
                i2++;
            }
            Byte m10008 = AbstractC5096.m10008(48616 * i2, bArr);
            if (m10008 != null) {
                i = m10008.byteValue();
            } else {
                i = ᵎⁱ.ˑﹳ;
                ᵎⁱ.ˑﹳ = i + 1;
            }
            ᵎⁱ.ˑﹳ = i;
            boolean z = ˋᵔ.ﹳٴ;
        }
        ˉʿ.ـᵎ(c3085, ᵎᵔ.class, r0);
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static List m5037(Object obj) {
        return Collections.singletonList(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5038(p186.InterfaceC2814 r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            r0 = 0
            if (r7 != 0) goto L5
            goto Le4
        L5:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r1 < r2) goto L10
            boolean r7 = r7.mo5554(r10)
            return r7
        L10:
            boolean r1 = r9 instanceof android.app.Activity
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L82
            android.app.Activity r9 = (android.app.Activity) r9
            r9.onUserInteraction()
            android.view.Window r7 = r9.getWindow()
            r8 = 8
            boolean r8 = r7.hasFeature(r8)
            if (r8 == 0) goto L65
            android.app.ActionBar r8 = r9.getActionBar()
            int r1 = r10.getKeyCode()
            r4 = 82
            if (r1 != r4) goto L65
            if (r8 == 0) goto L65
            boolean r1 = p121.AbstractC2026.f7935
            if (r1 != 0) goto L4d
            java.lang.Class r1 = r8.getClass()     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.String r4 = "onMenuKeyEvent"
            java.lang.Class[] r5 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.Class<android.view.KeyEvent> r6 = android.view.KeyEvent.class
            r5[r0] = r6     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.reflect.Method r1 = r1.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L4b
            p121.AbstractC2026.f7934 = r1     // Catch: java.lang.NoSuchMethodException -> L4b
        L4b:
            p121.AbstractC2026.f7935 = r3
        L4d:
            java.lang.reflect.Method r1 = p121.AbstractC2026.f7934
            if (r1 == 0) goto L62
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L62
            r4[r0] = r10     // Catch: java.lang.Throwable -> L62
            java.lang.Object r8 = r1.invoke(r8, r4)     // Catch: java.lang.Throwable -> L62
            if (r8 != 0) goto L5c
            goto L62
        L5c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L62
            boolean r0 = r8.booleanValue()     // Catch: java.lang.Throwable -> L62
        L62:
            if (r0 == 0) goto L65
            goto L81
        L65:
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto L6c
            goto L81
        L6c:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = p186.AbstractC2823.m6270(r10, r7)
            if (r8 == 0) goto L77
            goto L81
        L77:
            if (r7 == 0) goto L7d
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        L7d:
            boolean r3 = r10.dispatch(r9, r2, r9)
        L81:
            return r3
        L82:
            boolean r1 = r9 instanceof android.app.Dialog
            if (r1 == 0) goto Ld5
            android.app.Dialog r9 = (android.app.Dialog) r9
            boolean r7 = p121.AbstractC2026.f7929
            if (r7 != 0) goto L9b
            java.lang.Class<android.app.Dialog> r7 = android.app.Dialog.class
            java.lang.String r8 = "mOnKeyListener"
            java.lang.reflect.Field r7 = r7.getDeclaredField(r8)     // Catch: java.lang.NoSuchFieldException -> L99
            p121.AbstractC2026.f7930 = r7     // Catch: java.lang.NoSuchFieldException -> L99
            r7.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L99
        L99:
            p121.AbstractC2026.f7929 = r3
        L9b:
            java.lang.reflect.Field r7 = p121.AbstractC2026.f7930
            if (r7 == 0) goto La6
            java.lang.Object r7 = r7.get(r9)     // Catch: java.lang.IllegalAccessException -> La6
            android.content.DialogInterface$OnKeyListener r7 = (android.content.DialogInterface.OnKeyListener) r7     // Catch: java.lang.IllegalAccessException -> La6
            goto La7
        La6:
            r7 = r2
        La7:
            if (r7 == 0) goto Lb4
            int r8 = r10.getKeyCode()
            boolean r7 = r7.onKey(r9, r8, r10)
            if (r7 == 0) goto Lb4
            goto Ld4
        Lb4:
            android.view.Window r7 = r9.getWindow()
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto Lbf
            goto Ld4
        Lbf:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = p186.AbstractC2823.m6270(r10, r7)
            if (r8 == 0) goto Lca
            goto Ld4
        Lca:
            if (r7 == 0) goto Ld0
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        Ld0:
            boolean r3 = r10.dispatch(r9, r2, r9)
        Ld4:
            return r3
        Ld5:
            if (r8 == 0) goto Ldd
            boolean r8 = p186.AbstractC2823.m6270(r10, r8)
            if (r8 != 0) goto Le3
        Ldd:
            boolean r7 = r7.mo5554(r10)
            if (r7 == 0) goto Le4
        Le3:
            return r3
        Le4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p121.AbstractC2026.m5038(ˋᵔ.ٴﹶ, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static void m5039(Parcel parcel, int i, List list) {
        if (list == null) {
            return;
        }
        int m5058 = m5058(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcelable parcelable = (Parcelable) list.get(i2);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int dataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int dataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, 0);
                int dataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(dataPosition);
                parcel.writeInt(dataPosition3 - dataPosition2);
                parcel.setDataPosition(dataPosition3);
            }
        }
        m5047(parcel, m5058);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final void m5040(C1084 c1084, String str, String str2) {
        ArrayList arrayList = c1084.f4239;
        arrayList.add(str);
        arrayList.add(AbstractC5143.m10114(str2).toString());
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final int m5041(int i, List list) {
        if (i <= 0) {
            return -1;
        }
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (((SeriesCategory) it.next()).ﹳٴ == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static long m5042(double d) {
        י.ﾞᴵ("not a normal value", m5046(d));
        int exponent = Math.getExponent(d);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? doubleToRawLongBits << 1 : doubleToRawLongBits | 4503599627370496L;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static void m5043(Parcel parcel, int i, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int m5058 = m5058(parcel, i);
        parcel.writeBundle(bundle);
        m5047(parcel, m5058);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final void m5044(Object obj) {
        if (obj instanceof C0922) {
            throw ((C0922) obj).f3846;
        }
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static void m5045(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static boolean m5046(double d) {
        return Math.getExponent(d) <= 1023;
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static void m5047(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v23, types: [java.lang.Object, ʼᵔ.ˈ] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C0237 m5048(ComponentCallbacks2C0238 componentCallbacks2C0238, List list, ᵎﹶ r41) {
        InterfaceC1139 c4478;
        InterfaceC1139 c4491;
        int i;
        InterfaceC3396 interfaceC3396;
        ContentResolver contentResolver;
        Class cls;
        InterfaceC3396 interfaceC33962 = componentCallbacks2C0238.f1709;
        C3397 c3397 = componentCallbacks2C0238.f1710;
        C0233 c0233 = componentCallbacks2C0238.f1705;
        Context applicationContext = c0233.getApplicationContext();
        ʽ r5 = c0233.f1659;
        C0237 c0237 = new C0237();
        Object obj = new Object();
        C1084 c1084 = c0237.f1696;
        synchronized (c1084) {
            c1084.f4239.add(obj);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 27) {
            c0237.m1178(new Object());
        }
        Resources resources = applicationContext.getResources();
        ArrayList m1179 = c0237.m1179();
        C4195 c4195 = new C4195(applicationContext, m1179, interfaceC33962, c3397);
        C4475 c4475 = new C4475(interfaceC33962, new C4447(1));
        C4464 c4464 = new C4464(c0237.m1179(), resources.getDisplayMetrics(), interfaceC33962, c3397);
        if (i2 < 28 || !((Map) r5.ʾˋ).containsKey(com.bumptech.glide.ʽ.class)) {
            c4478 = new C4478(0, c4464);
            c4491 = new C4491(c4464, 2, c3397);
        } else {
            c4491 = new C4494(1);
            c4478 = new C4494(0);
        }
        if (i2 >= 28) {
            i = i2;
            interfaceC3396 = interfaceC33962;
            c0237.m1170("Animation", InputStream.class, Drawable.class, new C2353(new C2350(m1179, c3397), 1));
            c0237.m1170("Animation", ByteBuffer.class, Drawable.class, new C2353(new C2350(m1179, c3397), 0));
        } else {
            i = i2;
            interfaceC3396 = interfaceC33962;
        }
        C2355 c2355 = new C2355(applicationContext);
        C4490 c4490 = new C4490(c3397);
        C1090 c1090 = new C1090((byte) 0, 14);
        C5200 c5200 = new C5200(1);
        ContentResolver contentResolver2 = applicationContext.getContentResolver();
        c0237.m1176(ByteBuffer.class, new C4579(2));
        c0237.m1176(InputStream.class, new ᐧﹳ.ʽ(10, c3397));
        c0237.m1170("Bitmap", ByteBuffer.class, Bitmap.class, c4478);
        c0237.m1170("Bitmap", InputStream.class, Bitmap.class, c4491);
        String str = Build.FINGERPRINT;
        if ("robolectric".equals(str)) {
            contentResolver = contentResolver2;
            cls = ParcelFileDescriptor.class;
        } else {
            contentResolver = contentResolver2;
            C4478 c44782 = new C4478(1, c4464);
            cls = ParcelFileDescriptor.class;
            c0237.m1170("Bitmap", cls, Bitmap.class, c44782);
        }
        InterfaceC3396 interfaceC33963 = interfaceC3396;
        c0237.m1170("Bitmap", AssetFileDescriptor.class, Bitmap.class, new C4475(interfaceC33963, new C4483(0)));
        c0237.m1170("Bitmap", cls, Bitmap.class, c4475);
        C4582 c4582 = C4582.f17075;
        c0237.m1177(Bitmap.class, Bitmap.class, c4582);
        c0237.m1170("Bitmap", Bitmap.class, Bitmap.class, new C1622(2));
        c0237.m1168(Bitmap.class, c4490);
        c0237.m1170("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C4491(resources, c4478));
        c0237.m1170("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C4491(resources, c4491));
        c0237.m1170("BitmapDrawable", cls, BitmapDrawable.class, new C4491(resources, c4475));
        c0237.m1168(BitmapDrawable.class, new C3433(interfaceC33963, 12, c4490));
        c0237.m1170("Animation", InputStream.class, C4194.class, new C4193(m1179, c4195, c3397));
        c0237.m1170("Animation", ByteBuffer.class, C4194.class, c4195);
        c0237.m1168(C4194.class, new ﹳˋ.ʼˎ(28));
        c0237.m1177(C4536.class, C4536.class, c4582);
        c0237.m1170("Bitmap", C4536.class, Bitmap.class, new C4478(2, interfaceC33963));
        c0237.m1170("legacy_append", Uri.class, Drawable.class, c2355);
        c0237.m1170("legacy_append", Uri.class, Bitmap.class, new C4491(c2355, 1, interfaceC33963));
        c0237.m1169(new C0224(2));
        c0237.m1177(File.class, ByteBuffer.class, new C4582(3));
        c0237.m1177(File.class, InputStream.class, new C4602(new C4579(5)));
        c0237.m1170("legacy_append", File.class, File.class, new C1622(0));
        c0237.m1177(File.class, cls, new C4602(new C4579(4)));
        c0237.m1177(File.class, File.class, c4582);
        c0237.m1169(new C0219(c3397));
        if (!"robolectric".equals(str)) {
            c0237.m1169(new C0224(1));
        }
        C1944 c1944 = new C1944(applicationContext, 4);
        C1944 c19442 = new C1944(applicationContext, 2);
        C1944 c19443 = new C1944(applicationContext, 3);
        Class cls2 = Integer.TYPE;
        c0237.m1177(cls2, InputStream.class, c1944);
        c0237.m1177(Integer.class, InputStream.class, c1944);
        c0237.m1177(cls2, AssetFileDescriptor.class, c19442);
        c0237.m1177(Integer.class, AssetFileDescriptor.class, c19442);
        c0237.m1177(cls2, Drawable.class, c19443);
        c0237.m1177(Integer.class, Drawable.class, c19443);
        c0237.m1177(Uri.class, InputStream.class, new C1944(applicationContext, 7));
        c0237.m1177(Uri.class, AssetFileDescriptor.class, new C1944(applicationContext, 6));
        C4590 c4590 = new C4590(resources, 2);
        C4590 c45902 = new C4590(resources, 0);
        C4590 c45903 = new C4590(resources, 1);
        c0237.m1177(Integer.class, Uri.class, c4590);
        c0237.m1177(cls2, Uri.class, c4590);
        c0237.m1177(Integer.class, AssetFileDescriptor.class, c45902);
        c0237.m1177(cls2, AssetFileDescriptor.class, c45902);
        c0237.m1177(Integer.class, InputStream.class, c45903);
        c0237.m1177(cls2, InputStream.class, c45903);
        c0237.m1177(String.class, InputStream.class, new C4209(2));
        c0237.m1177(Uri.class, InputStream.class, new C4209(2));
        c0237.m1177(String.class, InputStream.class, new C4582(6));
        c0237.m1177(String.class, cls, new C4582(5));
        c0237.m1177(String.class, AssetFileDescriptor.class, new C4582(4));
        c0237.m1177(Uri.class, InputStream.class, new C4599(applicationContext.getAssets(), 1));
        c0237.m1177(Uri.class, AssetFileDescriptor.class, new C4599(applicationContext.getAssets(), 0));
        c0237.m1177(Uri.class, InputStream.class, new C1944(applicationContext, 0));
        c0237.m1177(Uri.class, InputStream.class, new C1944(applicationContext, 1));
        if (i >= 29) {
            c0237.m1177(Uri.class, InputStream.class, new C1942(applicationContext, InputStream.class));
            c0237.m1177(Uri.class, cls, new C1942(applicationContext, cls));
        }
        ContentResolver contentResolver3 = contentResolver;
        c0237.m1177(Uri.class, InputStream.class, new C4597(contentResolver3, 2));
        c0237.m1177(Uri.class, cls, new C4597(contentResolver3, 1));
        c0237.m1177(Uri.class, AssetFileDescriptor.class, new C4597(contentResolver3, 0));
        c0237.m1177(Uri.class, InputStream.class, new C4582(7));
        c0237.m1177(URL.class, InputStream.class, new ˈ(3));
        c0237.m1177(Uri.class, File.class, new C1944(applicationContext, 5));
        c0237.m1177(C4593.class, InputStream.class, new C4209(1));
        c0237.m1177(byte[].class, ByteBuffer.class, new C4582(1));
        c0237.m1177(byte[].class, InputStream.class, new C4582(2));
        c0237.m1177(Uri.class, Uri.class, c4582);
        c0237.m1177(Drawable.class, Drawable.class, c4582);
        c0237.m1170("legacy_append", Drawable.class, Drawable.class, new C1622(1));
        c0237.m1173(Bitmap.class, BitmapDrawable.class, new C3872(resources, 1));
        c0237.m1173(Bitmap.class, byte[].class, c1090);
        c0237.m1173(Drawable.class, byte[].class, new ˑי.ʽ(interfaceC33963, c1090, c5200));
        c0237.m1173(C4194.class, byte[].class, c5200);
        C4475 c44752 = new C4475(interfaceC33963, new C4472(0));
        c0237.m1170("legacy_append", ByteBuffer.class, Bitmap.class, c44752);
        c0237.m1170("legacy_append", ByteBuffer.class, BitmapDrawable.class, new C4491(resources, c44752));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            OkHttpGlideModule okHttpGlideModule = (OkHttpGlideModule) it.next();
            try {
                okHttpGlideModule.getClass();
                c0237.m1171(new C4209(0));
            } catch (AbstractMethodError e) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ".concat(okHttpGlideModule.getClass().getName()), e);
            }
        }
        if (r41 != null) {
            r41.ˈٴ(applicationContext, componentCallbacks2C0238, c0237);
        }
        return c0237;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static boolean m5049(EditText editText) {
        return editText.getInputType() != 0;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static void m5050(Parcel parcel, int i, Parcelable parcelable, int i2) {
        if (parcelable == null) {
            return;
        }
        int m5058 = m5058(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m5047(parcel, m5058);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m5051(String str) {
        KeyGenParameterSpec build = new KeyGenParameterSpec.Builder(str, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build();
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        keyGenerator.init(build);
        keyGenerator.generateKey();
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final void m5052(C3085 c3085, boolean z, boolean z2, boolean z3) {
        int i;
        ﹳٴ r0 = new ﹳٴ(z, z2, z3);
        byte[] bArr = ⁱˊ.ˈ;
        if (bArr == null || (((byte) (bArr[412] - ʼˎ.ⁱˊ()[412])) == 118 && F.ﹳٴ.sM1eT(412) == bArr[419] + 73)) {
            ᵎⁱ.ـˆ();
        } else {
            ˋᵔ.ˈ = false;
            int i2 = ᵎⁱ.ˑﹳ;
            while (i2 != ᵎⁱ.ˑﹳ + 0.1d) {
                i2++;
            }
            Byte m10008 = AbstractC5096.m10008(48616 * i2, bArr);
            if (m10008 != null) {
                i = m10008.byteValue();
            } else {
                i = ᵎⁱ.ˑﹳ;
                ᵎⁱ.ˑﹳ = i + 1;
            }
            ᵎⁱ.ˑﹳ = i;
            boolean z4 = ˋᵔ.ﹳٴ;
        }
        ˉʿ.ـᵎ(c3085, ᵢʿ.ʽ.class, r0);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final void m5053(AbstractActivityC4410 abstractActivityC4410) {
        abstractActivityC4410.startActivity(new Intent(abstractActivityC4410, (Class<?>) UnlockPremiumActivity.class));
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static void m5054(Parcel parcel, int i, String str) {
        if (str == null) {
            return;
        }
        int m5058 = m5058(parcel, i);
        parcel.writeString(str);
        m5047(parcel, m5058);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static void m5055(Parcel parcel, int i, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int m5058 = m5058(parcel, i);
        parcel.writeStrongBinder(iBinder);
        m5047(parcel, m5058);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C4634 m5056() {
        return new C4634(10);
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static void m5057(Parcel parcel, int i, Parcelable[] parcelableArr, int i2) {
        if (parcelableArr == null) {
            return;
        }
        int m5058 = m5058(parcel, i);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int dataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int dataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, i2);
                int dataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(dataPosition);
                parcel.writeInt(dataPosition3 - dataPosition2);
                parcel.setDataPosition(dataPosition3);
            }
        }
        m5047(parcel, m5058);
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static int m5058(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final File m5059(Context context, String str) {
        return new File(context.getApplicationContext().getFilesDir(), "datastore/".concat(str));
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static final void m5060(String str) {
        if (str.length() <= 0) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ('!' > charAt || charAt >= 127) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                ⁱˊ.ʽ(16);
                String num = Integer.toString(charAt, 16);
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in header name: ");
                sb.append(str);
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4634 m5061(C4634 c4634) {
        c4634.m9190();
        c4634.f17310 = true;
        return c4634.f17312 > 0 ? c4634 : C4634.f17309;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final void m5062(String str, String str2) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                ⁱˊ.ʽ(16);
                String num = Integer.toString(charAt, 16);
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in ");
                sb.append(str2);
                sb.append(" value");
                sb.append(AbstractC4710.m9429(str2) ? "" : ": ".concat(str));
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static C2968 m5063(String str) {
        C5149 m10097 = C2968.f11341.m10097(0, str);
        if (m10097 == null) {
            throw new IllegalArgumentException(AbstractC1220.m3781('\"', "No subtype found for: \"", str));
        }
        String str2 = (String) ((C5147) m10097.m10144()).get(1);
        Locale locale = Locale.ROOT;
        String lowerCase = str2.toLowerCase(locale);
        ((String) ((C5147) m10097.m10144()).get(2)).toLowerCase(locale);
        ArrayList arrayList = new ArrayList();
        Matcher matcher = m10097.f19424;
        int i = ˉˆ.ˉٴ(matcher.start(), matcher.end()).f7021;
        while (true) {
            int i2 = i + 1;
            if (i2 >= str.length()) {
                return new C2968(str, lowerCase, (String[]) arrayList.toArray(new String[0]));
            }
            C5149 m100972 = C2968.f11342.m10097(i2, str);
            if (m100972 == null) {
                throw new IllegalArgumentException(("Parameter is not formatted correctly: \"" + str.substring(i2) + "\" for: \"" + str + '\"').toString());
            }
            Matcher matcher2 = m100972.f19424;
            C5156 c5156 = m100972.f19421;
            C5144 m10152 = c5156.m10152(1);
            String str3 = m10152 != null ? m10152.f19419 : null;
            if (str3 == null) {
                i = ˉˆ.ˉٴ(matcher2.start(), matcher2.end()).f7021;
            } else {
                C5144 m101522 = c5156.m10152(2);
                String str4 = m101522 != null ? m101522.f19419 : null;
                if (str4 == null) {
                    str4 = c5156.m10152(3).f19419;
                } else if (AbstractC5143.m10132(str4, '\'') && AbstractC5143.m10125(str4, '\'') && str4.length() > 2) {
                    str4 = str4.substring(1, str4.length() - 1);
                }
                arrayList.add(str3);
                arrayList.add(str4);
                i = ˉˆ.ˉٴ(matcher2.start(), matcher2.end()).f7021;
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final ʼᐧ m5064(ᵔᵔ.ˈ r16, String str, ᵢˏ r18, ᵢˏ r19, boolean z, Boolean bool, boolean z2, Boolean bool2, Integer num) {
        ˑﹳ r3 = r16.ﹳٴ();
        long j = r16.ᴵˊ;
        long j2 = r16.ʽʽ;
        return new ʼᐧ(0L, r3, j, j2 != 0 ? Long.valueOf(j2) : null, str, r18, r19, z, bool, z2, bool2, (Integer) null, num);
    }

    /* renamed from: ʻٴ */
    public void mo4205(View view, int i) {
    }

    /* renamed from: ʼʼ */
    public abstract void mo4206(View view, float f, float f2);

    /* renamed from: ʼˈ */
    public abstract boolean mo2026(C0593 c0593, C0591 c0591, C0591 c05912);

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int mo5065() {
        return 0;
    }

    /* renamed from: ʽ */
    public abstract int mo4207(View view, int i);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public void mo5066(View view, int i) {
        if (!f7932) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f7936 = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f7932 = true;
        }
        Field field = f7936;
        if (field != null) {
            try {
                f7936.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    /* renamed from: ʾᵎ */
    public abstract void mo4208(View view, int i, int i2);

    /* renamed from: ˈʿ */
    public abstract void mo2027(C0580 c0580, C0580 c05802);

    /* renamed from: ˉˆ */
    public int mo4209(View view) {
        return 0;
    }

    /* renamed from: ˋᵔ */
    public abstract void mo2028(C0580 c0580, Thread thread);

    /* renamed from: ـˆ */
    public abstract void mo4210(int i);

    /* renamed from: ـˏ */
    public abstract boolean mo2029(C0593 c0593, Object obj, Object obj2);

    /* renamed from: ٴᵢ */
    public abstract boolean mo4211(View view, int i);

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public float mo5067(View view) {
        if (f7931) {
            try {
                return AbstractC3159.m6955(view);
            } catch (NoSuchMethodError unused) {
                f7931 = false;
            }
        }
        return view.getAlpha();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public void mo5068(View view, float f) {
        if (f7931) {
            try {
                AbstractC3159.m6954(view, f);
                return;
            } catch (NoSuchMethodError unused) {
                f7931 = false;
            }
        }
        view.setAlpha(f);
    }

    /* renamed from: ⁱˊ */
    public abstract int mo4212(View view, int i);

    /* renamed from: ﹳـ */
    public abstract boolean mo2030(C0593 c0593, C0580 c0580, C0580 c05802);
}
