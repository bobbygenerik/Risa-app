package p395;

import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.os.Build;
import j$.util.Objects;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p003.C0783;
import p011.HandlerC0874;
import p032.AbstractC1158;
import p055.AbstractC1489;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p366.C4473;
import p421.InterfaceC5000;
import ᐧﹳ.ʽ;

/* renamed from: ⁱᴵ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4723 implements InterfaceC4730 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C4473 f17843 = new C4473(17);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f17844;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final UUID f17845;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final MediaDrm f17846;

    public C4723(UUID uuid) {
        uuid.getClass();
        UUID uuid2 = AbstractC1489.f5846;
        AbstractC3731.m7843("Use C.CLEARKEY_UUID instead", !uuid2.equals(uuid));
        this.f17845 = uuid;
        MediaDrm mediaDrm = new MediaDrm((Build.VERSION.SDK_INT >= 27 || !uuid.equals(AbstractC1489.f5843)) ? uuid : uuid2);
        this.f17846 = mediaDrm;
        this.f17844 = 1;
        if (AbstractC1489.f5844.equals(uuid) && "ASUS_Z00AD".equals(Build.MODEL)) {
            mediaDrm.setPropertyString("securityLevel", "L3");
        }
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ʼˎ */
    public final void mo9047(byte[] bArr) {
        this.f17846.closeSession(bArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x01a5, code lost:
    
        if ("AFTT".equals(r5) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01ab, code lost:
    
        if (r5 == null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0242, code lost:
    
        if (j$.util.Objects.equals(r3, "aidl-1") == false) goto L111;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0255  */
    @Override // p395.InterfaceC4730
    /* renamed from: ʼᐧ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p395.C4722 mo9048(byte[] r17, java.util.List r18, int r19, java.util.HashMap r20) {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p395.C4723.mo9048(byte[], java.util.List, int, java.util.HashMap):ⁱᴵ.ˉˆ");
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ʽ */
    public final void mo9049(byte[] bArr, byte[] bArr2) {
        this.f17846.restoreKeys(bArr, bArr2);
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ʽﹳ */
    public final byte[] mo9050() {
        return this.f17846.openSession();
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ˆʾ */
    public final byte[] mo9051(byte[] bArr, byte[] bArr2) {
        if (AbstractC1489.f5843.equals(this.f17845) && Build.VERSION.SDK_INT < 27) {
            try {
                JSONObject jSONObject = new JSONObject(AbstractC3712.m7804(bArr2));
                StringBuilder sb = new StringBuilder("{\"keys\":[");
                JSONArray jSONArray = jSONObject.getJSONArray("keys");
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (i != 0) {
                        sb.append(",");
                    }
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    sb.append("{\"k\":\"");
                    sb.append(jSONObject2.getString("k").replace('-', '+').replace('_', '/'));
                    sb.append("\",\"kid\":\"");
                    sb.append(jSONObject2.getString("kid").replace('-', '+').replace('_', '/'));
                    sb.append("\",\"kty\":\"");
                    sb.append(jSONObject2.getString("kty"));
                    sb.append("\"}");
                }
                sb.append("]}");
                bArr2 = sb.toString().getBytes(StandardCharsets.UTF_8);
            } catch (JSONException e) {
                AbstractC3731.m7863("ClearKeyUtil", "Failed to adjust response data: ".concat(AbstractC3712.m7804(bArr2)), e);
            }
        }
        return this.f17846.provideKeyResponse(bArr, bArr2);
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ˉʿ */
    public final C4716 mo9052() {
        MediaDrm.ProvisionRequest provisionRequest = this.f17846.getProvisionRequest();
        return new C4716(provisionRequest.getDefaultUrl(), provisionRequest.getData());
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ˉˆ */
    public final void mo9053(byte[] bArr) {
        this.f17846.provideProvisionResponse(bArr);
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ˏי */
    public final boolean mo9054(String str, byte[] bArr) {
        MediaCrypto mediaCrypto;
        boolean equals;
        int i = Build.VERSION.SDK_INT;
        UUID uuid = this.f17845;
        if (i >= 31) {
            boolean equals2 = uuid.equals(AbstractC1489.f5844);
            MediaDrm mediaDrm = this.f17846;
            if (equals2) {
                String propertyString = mediaDrm.getPropertyString("version");
                equals = (propertyString.startsWith("v5.") || propertyString.startsWith("14.") || propertyString.startsWith("15.") || propertyString.startsWith("16.0")) ? false : true;
            } else {
                equals = uuid.equals(AbstractC1489.f5843);
            }
            if (equals) {
                return AbstractC1158.m3611(mediaDrm, str, mediaDrm.getSecurityLevel(bArr));
            }
        }
        MediaCrypto mediaCrypto2 = null;
        try {
            try {
                mediaCrypto = new MediaCrypto((i >= 27 || !Objects.equals(uuid, AbstractC1489.f5843)) ? uuid : AbstractC1489.f5846, bArr);
            } catch (Throwable th) {
                th = th;
            }
        } catch (MediaCryptoException unused) {
        }
        try {
            boolean requiresSecureDecoderComponent = mediaCrypto.requiresSecureDecoderComponent(str);
            mediaCrypto.release();
            return requiresSecureDecoderComponent;
        } catch (MediaCryptoException unused2) {
            mediaCrypto2 = mediaCrypto;
            boolean z = !uuid.equals(AbstractC1489.f5843);
            if (mediaCrypto2 != null) {
                mediaCrypto2.release();
            }
            return z;
        } catch (Throwable th2) {
            th = th2;
            mediaCrypto2 = mediaCrypto;
            if (mediaCrypto2 != null) {
                mediaCrypto2.release();
            }
            throw th;
        }
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ᵎﹶ */
    public final Map mo9055(byte[] bArr) {
        return this.f17846.queryKeyStatus(bArr);
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ᵔᵢ */
    public final void mo9056(final ʽ r2) {
        this.f17846.setOnEventListener(new MediaDrm.OnEventListener() { // from class: ⁱᴵ.יـ
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                C4723 c4723 = C4723.this;
                ʽ r4 = r2;
                c4723.getClass();
                HandlerC0874 handlerC0874 = ((C4724) r4.ᴵˊ).f17867;
                handlerC0874.getClass();
                handlerC0874.obtainMessage(i, bArr).sendToTarget();
            }
        });
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ᵔﹳ */
    public final int mo9057() {
        return 2;
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ﹳٴ */
    public final synchronized void mo9058() {
        int i = this.f17844 - 1;
        this.f17844 = i;
        if (i == 0) {
            this.f17846.release();
        }
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ﹳᐧ */
    public final InterfaceC5000 mo9059(byte[] bArr) {
        int i = Build.VERSION.SDK_INT;
        UUID uuid = this.f17845;
        if (i < 27 && Objects.equals(uuid, AbstractC1489.f5843)) {
            uuid = AbstractC1489.f5846;
        }
        return new C4733(uuid, bArr);
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ﾞʻ */
    public final void mo9060(byte[] bArr, C0783 c0783) {
        if (Build.VERSION.SDK_INT >= 31) {
            try {
                AbstractC1158.m3616(this.f17846, bArr, c0783);
            } catch (UnsupportedOperationException unused) {
                AbstractC3731.m7850("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }
}
