package p444;

import androidx.leanback.widget.C0121;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import p031.C1144;
import p068.C1621;
import p080.InterfaceC1710;
import p087.AbstractC1748;
import p331.C4194;
import p331.C4196;

/* renamed from: ﹶⁱ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5200 implements InterfaceC5202 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C5200 f19543 = new C5200(0);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19544;

    public /* synthetic */ C5200(int i) {
        this.f19544 = i;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, androidx.leanback.widget.יﹳ] */
    @Override // p444.InterfaceC5202
    /* renamed from: ˑﹳ */
    public final InterfaceC1710 mo3466(InterfaceC1710 interfaceC1710, C1144 c1144) {
        C0121 c0121;
        byte[] bArr;
        switch (this.f19544) {
            case 0:
                return interfaceC1710;
            default:
                ByteBuffer asReadOnlyBuffer = ((C4196) ((C4194) interfaceC1710.get()).f15607.f3515).f15636.f16978.asReadOnlyBuffer();
                AtomicReference atomicReference = AbstractC1748.f7108;
                if (asReadOnlyBuffer.isReadOnly() || !asReadOnlyBuffer.hasArray()) {
                    c0121 = null;
                } else {
                    byte[] array = asReadOnlyBuffer.array();
                    int arrayOffset = asReadOnlyBuffer.arrayOffset();
                    int limit = asReadOnlyBuffer.limit();
                    ?? obj = new Object();
                    obj.f955 = array;
                    obj.f956 = arrayOffset;
                    obj.f957 = limit;
                    c0121 = obj;
                }
                if (c0121 != null && c0121.f956 == 0 && c0121.f957 == ((byte[]) c0121.f955).length) {
                    bArr = asReadOnlyBuffer.array();
                } else {
                    ByteBuffer asReadOnlyBuffer2 = asReadOnlyBuffer.asReadOnlyBuffer();
                    byte[] bArr2 = new byte[asReadOnlyBuffer2.limit()];
                    asReadOnlyBuffer2.get(bArr2);
                    bArr = bArr2;
                }
                return new C1621(bArr);
        }
    }
}
