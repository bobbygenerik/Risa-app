.class public abstract Lﹳʽ/ٴᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lcom/parse/ˑ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/parse/ˑ;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/parse/ˑ;-><init>(I)V

    sput-object v0, Lﹳʽ/ٴᵢ;->ﹳٴ:Lcom/parse/ˑ;

    return-void
.end method

.method public static ﹳٴ(I)[B
    .locals 1

    new-array p0, p0, [B

    sget-object v0, Lﹳʽ/ٴᵢ;->ﹳٴ:Lcom/parse/ˑ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method
