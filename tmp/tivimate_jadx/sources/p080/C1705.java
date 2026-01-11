package p080;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayDeque;
import p031.C1144;
import p031.InterfaceC1141;
import p031.InterfaceC1147;
import p087.AbstractC1746;
import p087.C1740;
import p257.C3390;
import p257.C3391;
import p257.C3397;
import p257.InterfaceC3394;
import ʽⁱ.ᵎﹶ;

/* renamed from: ʿʾ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1705 implements InterfaceC1141 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final C1740 f6970 = new C1740(50);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final InterfaceC1147 f6971;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC1141 f6972;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC1141 f6973;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f6974;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Class f6975;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1144 f6976;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3397 f6977;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f6978;

    public C1705(C3397 c3397, InterfaceC1141 interfaceC1141, InterfaceC1141 interfaceC11412, int i, int i2, InterfaceC1147 interfaceC1147, Class cls, C1144 c1144) {
        this.f6977 = c3397;
        this.f6972 = interfaceC1141;
        this.f6973 = interfaceC11412;
        this.f6974 = i;
        this.f6978 = i2;
        this.f6971 = interfaceC1147;
        this.f6975 = cls;
        this.f6976 = c1144;
    }

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        if (obj instanceof C1705) {
            C1705 c1705 = (C1705) obj;
            if (this.f6978 == c1705.f6978 && this.f6974 == c1705.f6974 && AbstractC1746.m4703(this.f6971, c1705.f6971) && this.f6975.equals(c1705.f6975) && this.f6972.equals(c1705.f6972) && this.f6973.equals(c1705.f6973) && this.f6976.equals(c1705.f6976)) {
                return true;
            }
        }
        return false;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        int hashCode = ((((this.f6973.hashCode() + (this.f6972.hashCode() * 31)) * 31) + this.f6974) * 31) + this.f6978;
        InterfaceC1147 interfaceC1147 = this.f6971;
        if (interfaceC1147 != null) {
            hashCode = (hashCode * 31) + interfaceC1147.hashCode();
        }
        return this.f6976.f4409.hashCode() + ((this.f6975.hashCode() + (hashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f6972 + ", signature=" + this.f6973 + ", width=" + this.f6974 + ", height=" + this.f6978 + ", decodedResourceClass=" + this.f6975 + ", transformation='" + this.f6971 + "', options=" + this.f6976 + '}';
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        Object m7299;
        C3397 c3397 = this.f6977;
        synchronized (c3397) {
            C3391 c3391 = c3397.f13265;
            InterfaceC3394 interfaceC3394 = (InterfaceC3394) ((ArrayDeque) ((ᵎﹶ) c3391).ʾˋ).poll();
            if (interfaceC3394 == null) {
                interfaceC3394 = c3391.m7274();
            }
            C3390 c3390 = (C3390) interfaceC3394;
            c3390.f13240 = 8;
            c3390.f13239 = byte[].class;
            m7299 = c3397.m7299(c3390, byte[].class);
        }
        byte[] bArr = (byte[]) m7299;
        ByteBuffer.wrap(bArr).putInt(this.f6974).putInt(this.f6978).array();
        this.f6973.mo3574(messageDigest);
        this.f6972.mo3574(messageDigest);
        messageDigest.update(bArr);
        InterfaceC1147 interfaceC1147 = this.f6971;
        if (interfaceC1147 != null) {
            interfaceC1147.mo3574(messageDigest);
        }
        this.f6976.mo3574(messageDigest);
        C1740 c1740 = f6970;
        Class cls = this.f6975;
        byte[] bArr2 = (byte[]) c1740.m4691(cls);
        if (bArr2 == null) {
            bArr2 = cls.getName().getBytes(InterfaceC1141.f4403);
            c1740.m4689(cls, bArr2);
        }
        messageDigest.update(bArr2);
        this.f6977.m7296(bArr);
    }
}
