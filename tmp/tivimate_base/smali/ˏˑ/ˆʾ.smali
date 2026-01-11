.class public abstract Lˏˑ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lˏˑ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Lˏˑ/ˑﹳ;->ⁱˊ()Lﾞˏ/ʽ;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lﾞˏ/ʽ;->ⁱˊ(I)V

    sget-object v1, Lˏˑ/ˈ;->ⁱˊ:Lˏˑ/ˈ;

    iput-object v1, v0, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Lﾞˏ/ʽ;->ﹳٴ()Lˏˑ/ˑﹳ;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lˏˑ/ˆʾ;->ﹳٴ:Lˏˑ/ˑﹳ;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
