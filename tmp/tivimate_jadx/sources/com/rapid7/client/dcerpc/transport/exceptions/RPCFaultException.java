package com.rapid7.client.dcerpc.transport.exceptions;

import java.io.IOException;
import p453.EnumC5368;

/* loaded from: classes.dex */
public class RPCFaultException extends IOException {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ int f3101 = 0;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f3102;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final EnumC5368 f3103;

    public RPCFaultException(int i) {
        this.f3102 = i;
        EnumC5368 enumC5368 = (EnumC5368) EnumC5368.f20435.get(Integer.valueOf(i));
        this.f3103 = enumC5368 == null ? EnumC5368.f20437 : enumC5368;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return String.format("Fault: %s (0x%08X)", this.f3103, Integer.valueOf(this.f3102));
    }
}
