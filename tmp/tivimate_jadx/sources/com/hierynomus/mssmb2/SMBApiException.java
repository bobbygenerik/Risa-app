package com.hierynomus.mssmb2;

import com.hierynomus.smbj.common.SMBRuntimeException;
import p033.C1181;
import p284.EnumC3571;

/* loaded from: classes.dex */
public class SMBApiException extends SMBRuntimeException {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f3097;

    public SMBApiException(long j, String str, Exception exc) {
        super(str, exc);
        this.f3097 = j;
    }

    public SMBApiException(C1181 c1181, String str) {
        super(str);
        this.f3097 = c1181.f4580;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        long j = this.f3097;
        return String.format("%s (0x%08x): %s", EnumC3571.m7526(j).name(), Long.valueOf(j), super.getMessage());
    }
}
