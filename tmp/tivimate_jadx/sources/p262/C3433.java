package p262;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.session.AbstractC0001;
import android.text.Editable;
import android.widget.EditText;
import androidx.lifecycle.EnumC0199;
import ar.tvplayer.tv.R;
import com.parse.ˊﾞ;
import j$.util.DesugarCollections;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import p013.C0913;
import p031.C1144;
import p031.InterfaceC1142;
import p055.C1469;
import p075.InterfaceC1653;
import p077.C1666;
import p080.InterfaceC1710;
import p092.EnumC1852;
import p092.InterfaceC1851;
import p113.RunnableC1979;
import p171.C2644;
import p171.InterfaceC2639;
import p210.C2973;
import p210.C2975;
import p220.C3029;
import p220.C3032;
import p220.InterfaceC3026;
import p229.C3125;
import p234.C3194;
import p257.InterfaceC3396;
import p266.C3454;
import p276.InterfaceC3527;
import p296.AbstractC3659;
import p305.AbstractC3731;
import p311.C3789;
import p311.C3827;
import p311.InterfaceC3801;
import p311.InterfaceC3826;
import p311.RunnableC3805;
import p313.C3884;
import p333.InterfaceC4202;
import p333.InterfaceC4203;
import p343.InterfaceC4267;
import p359.C4356;
import p359.C4360;
import p359.C4362;
import p364.InterfaceC4437;
import p366.C4465;
import p366.C4483;
import p366.C4486;
import p366.C4490;
import p392.C4699;
import p420.C4976;
import p425.InterfaceC5046;
import p439.C5189;
import p439.C5191;
import p447.C5256;
import p455.InterfaceC5376;
import p457.InterfaceC5385;
import ˉᵎ.ⁱˊ;
import ˊⁱ.ˑﹳ;
import ـˎ.ˈ;
import ᐧᵎ.ᵢי;

/* renamed from: ـʾ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3433 implements InterfaceC3527, InterfaceC3826, InterfaceC1653, InterfaceC1142, InterfaceC3026, InterfaceC4437 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f13456;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f13457;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f13458;

    public C3433() {
        this.f13457 = 1;
        this.f13458 = new HashMap();
    }

    public /* synthetic */ C3433(int i) {
        this.f13457 = i;
    }

    public C3433(Context context, int i) {
        this.f13457 = i;
        switch (i) {
            case 19:
                this.f13456 = null;
                this.f13458 = context;
                return;
            default:
                AbstractC3659.m7687(context);
                Resources resources = context.getResources();
                this.f13458 = resources;
                this.f13456 = resources.getResourcePackageName(R.string.4jd);
                return;
        }
    }

    public C3433(Handler handler, InterfaceC5046 interfaceC5046) {
        this.f13457 = 20;
        if (interfaceC5046 != null) {
            handler.getClass();
        } else {
            handler = null;
        }
        this.f13458 = handler;
        this.f13456 = interfaceC5046;
    }

    public C3433(Handler handler, InterfaceC5385 interfaceC5385) {
        this.f13457 = 24;
        if (interfaceC5385 != null) {
            handler.getClass();
        } else {
            handler = null;
        }
        this.f13458 = handler;
        this.f13456 = interfaceC5385;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.text.Editable$Factory, ﹶᐧ.ﹳٴ] */
    public C3433(EditText editText) {
        this.f13457 = 21;
        this.f13458 = editText;
        C5189 c5189 = new C5189(editText);
        this.f13456 = c5189;
        editText.addTextChangedListener(c5189);
        if (C5191.f19510 == null) {
            synchronized (C5191.f19511) {
                try {
                    if (C5191.f19510 == null) {
                        ?? factory = new Editable.Factory();
                        try {
                            C5191.f19509 = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, C5191.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        C5191.f19510 = factory;
                    }
                } finally {
                }
            }
        }
        editText.setEditableFactory(C5191.f19510);
    }

    public C3433(ByteArrayInputStream byteArrayInputStream) {
        this.f13457 = 5;
        C2973 c2973 = new C2973(byteArrayInputStream);
        this.f13458 = c2973;
        this.f13456 = new C2975(c2973);
    }

    public /* synthetic */ C3433(Object obj, int i, Object obj2) {
        this.f13457 = i;
        this.f13458 = obj;
        this.f13456 = obj2;
    }

    public /* synthetic */ C3433(Object obj, Object obj2, int i, boolean z) {
        this.f13457 = i;
        this.f13456 = obj;
        this.f13458 = obj2;
    }

    public C3433(C1666 c1666) {
        this.f13457 = 9;
        this.f13458 = c1666;
        this.f13456 = new C3125(c1666);
    }

    public C3433(ˑﹳ r2, C3125 c3125) {
        this.f13457 = 7;
        this.f13456 = c3125;
        r2.ᵔﹳ(new C3884(0, this));
        this.f13458 = new HashSet();
    }

    public C3433(C5256 c5256) {
        this.f13457 = 22;
        this.f13456 = c5256;
    }

    public C3433(InterfaceC3527[] interfaceC3527Arr) {
        this.f13457 = 2;
        this.f13458 = interfaceC3527Arr;
        this.f13456 = new ˈ(25);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    private final void m7323(C4699 c4699) {
        synchronized (c4699) {
        }
        Handler handler = (Handler) this.f13458;
        if (handler != null) {
            handler.post(new RunnableC3805(this, 8, c4699));
        }
    }

    @Override // p343.InterfaceC4267
    public Object get() {
        int i = 5;
        C4483 c4483 = new C4483(i);
        C4486 c4486 = new C4486(i);
        Object obj = ((InterfaceC4267) this.f13458).get();
        InterfaceC4267 interfaceC4267 = (InterfaceC4267) this.f13456;
        return new C4360(c4483, c4486, C4362.f16196, (C4356) obj, interfaceC4267);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public void m7324(InterfaceC1851 interfaceC1851) {
        interfaceC1851.mo4784(this);
        interfaceC1851.mo4786(this);
        interfaceC1851.mo4785(this);
    }

    @Override // p031.InterfaceC1142
    /* renamed from: ʼʼ */
    public int mo3575(C1144 c1144) {
        return 2;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public synchronized Map m7325() {
        try {
            if (((Map) this.f13456) == null) {
                this.f13456 = DesugarCollections.unmodifiableMap(new HashMap((HashMap) this.f13458));
            }
        } catch (Throwable th) {
            throw th;
        }
        return (Map) this.f13456;
    }

    @Override // p311.InterfaceC3826
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo7326(InterfaceC3801 interfaceC3801, C3789 c3789) {
        ((C3827) this.f13456).f14827.execute(new ˊﾞ(this, (InterfaceC3826) this.f13458, c3789, 8));
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public byte m7327() {
        return (byte) ((C2975) this.f13456).readUnsignedByte();
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public void m7328(C1469 c1469) {
        Handler handler = (Handler) this.f13458;
        if (handler != null) {
            handler.post(new RunnableC3805(this, 13, c1469));
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public Enum m7329(Object obj) {
        Enum r0 = (Enum) ((Map) this.f13456).get(obj);
        if (r0 != null) {
            return r0;
        }
        throw new GeneralSecurityException("Unable to convert object enum: " + obj);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public Object m7330(Enum r4) {
        Object obj = ((Map) this.f13458).get(r4);
        if (obj != null) {
            return obj;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: " + r4);
    }

    @Override // p364.InterfaceC4437
    /* renamed from: ˈ */
    public Object mo4043(Uri uri, C3454 c3454) {
        InterfaceC5376 interfaceC5376 = (InterfaceC5376) ((InterfaceC4437) this.f13458).mo4043(uri, c3454);
        List list = (List) this.f13456;
        return (list == null || list.isEmpty()) ? interfaceC5376 : (InterfaceC5376) interfaceC5376.mo4029(list);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003e  */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.datatransport.cct.CctBackendFactory m7331(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p262.C3433.m7331(java.lang.String):com.google.android.datatransport.cct.CctBackendFactory");
    }

    @Override // p031.InterfaceC1145
    /* renamed from: ˉˆ */
    public boolean mo3578(Object obj, File file, C1144 c1144) {
        return ((C4490) this.f13456).mo3578(new C4465(((BitmapDrawable) ((InterfaceC1710) obj).get()).getBitmap(), (InterfaceC3396) this.f13458), file, c1144);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public void m7332(Bundle bundle) {
        C1666 c1666 = (C1666) this.f13458;
        Bundle bundle2 = ⁱˊ.ﹳٴ((C0913[]) Arrays.copyOf(new C0913[0], 0));
        Bundle bundle3 = c1666.f6777;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        synchronized (c1666.f6770) {
            for (Map.Entry entry : c1666.f6771.entrySet()) {
                bundle2.putBundle((String) entry.getKey(), ((InterfaceC4202) entry.getValue()).mo738());
            }
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m7333(EnumC1852 enumC1852) {
        if (enumC1852 == EnumC1852.ONE) {
            return;
        }
        byte b = enumC1852.f7446;
        long j = ((C2973) this.f13458).f11375;
        long j2 = ((b + j) & (~b)) - j;
        while (true) {
            long j3 = j2 - 1;
            if (j2 <= 0) {
                return;
            }
            m7327();
            j2 = j3;
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public void m7334(Bundle bundle) {
        C1666 c1666 = (C1666) this.f13458;
        InterfaceC4203 interfaceC4203 = c1666.f6776;
        if (!c1666.f6772) {
            c1666.m4552();
        }
        if (interfaceC4203.mo691().f1076.m733(EnumC0199.f1102)) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + interfaceC4203.mo691().f1076).toString());
        }
        if (c1666.f6773) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        Bundle bundle2 = null;
        if (bundle != null && bundle.containsKey("androidx.lifecycle.BundlableSavedStateRegistry.key")) {
            bundle2 = ʽٴ.ˈ.ʼᐧ("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle);
        }
        c1666.f6777 = bundle2;
        c1666.f6773 = true;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public void m7335(C3432 c3432, int i) {
        ((ᵢי) this.f13456).ʼˎ(new RunnableC1979((C3417) this.f13458, c3432, false, i));
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m7336(int i) {
        if (i != ((C2975) this.f13456).skipBytes(i)) {
            throw new EOFException();
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m7337() {
        String str = (String) this.f13458;
        try {
            C3194 c3194 = (C3194) this.f13456;
            c3194.getClass();
            new File((File) c3194.f12213, str).createNewFile();
        } catch (IOException e) {
            "Error creating marker: ".concat(str);
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long[] m7338(int i) {
        Semaphore semaphore = (Semaphore) this.f13456;
        try {
            if (!semaphore.tryAcquire(i, 5000L, TimeUnit.MILLISECONDS)) {
                throw new RuntimeException("Not enough credits (" + semaphore.availablePermits() + " available) to hand out " + i + " sequence numbers");
            }
            long j = i;
            long andAdd = ((AtomicLong) this.f13458).getAndAdd(j);
            int i2 = (int) ((j + andAdd) - andAdd);
            long[] jArr = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                jArr[i3] = i3 + andAdd;
            }
            return jArr;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            StringBuilder m16 = AbstractC0001.m16(i, "Got interrupted waiting for ", " to be available. Credits available at this moment: ");
            m16.append(semaphore.availablePermits());
            throw new RuntimeException(m16.toString());
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void m7339(C4699 c4699) {
        switch (this.f13457) {
            case 20:
                m7323(c4699);
                return;
            default:
                synchronized (c4699) {
                }
                Handler handler = (Handler) this.f13458;
                if (handler != null) {
                    handler.post(new RunnableC3805(this, 15, c4699));
                    return;
                }
                return;
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public String m7340(String str) {
        String str2 = (String) this.f13456;
        Resources resources = (Resources) this.f13458;
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public InterfaceC2639 m7341(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = (int[]) this.f13458;
            if (i2 >= iArr.length) {
                AbstractC3731.m7842("BaseMediaChunkOutput", "Unmatched track of type: " + i);
                return new C2644();
            }
            if (i == iArr[i2]) {
                return ((C4976[]) this.f13456)[i2];
            }
            i2++;
        }
    }

    @Override // p311.InterfaceC3826
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo7342(Throwable th) {
        ((C3827) this.f13456).f14827.execute(new RunnableC3805(this, (InterfaceC3826) this.f13458, th));
    }

    @Override // p220.InterfaceC3026
    /* renamed from: ﹳٴ */
    public void mo6558(C3029 c3029) {
        ((Map) ((C3125) this.f13456).f11941).remove((C3032) this.f13458);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public void m7343() {
        ((C1666) this.f13458).m4552();
    }

    @Override // p276.InterfaceC3527
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public StackTraceElement[] mo7344(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        InterfaceC3527[] interfaceC3527Arr = (InterfaceC3527[]) this.f13458;
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (int i = 0; i < 1; i++) {
            InterfaceC3527 interfaceC3527 = interfaceC3527Arr[i];
            if (stackTraceElementArr2.length <= 1024) {
                break;
            }
            stackTraceElementArr2 = interfaceC3527.mo7344(stackTraceElementArr);
        }
        return stackTraceElementArr2.length > 1024 ? ((ˈ) this.f13456).ﾞʻ(stackTraceElementArr2) : stackTraceElementArr2;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m7345() {
        this.f13458 = null;
        this.f13456 = null;
    }
}
