.class public abstract Lיʻ/ٴᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Lיʻ/ٴʼ;

.field public static final ʽ:Lיʻ/ᵔʾ;

.field public static final ˆʾ:Lיʻ/ٴʼ;

.field public static final ˈ:Lיʻ/ᵔʾ;

.field public static final ˑﹳ:Lיʻ/ٴﹶ;

.field public static final ᵎﹶ:Lיʻ/ٴʼ;

.field public static final ᵔᵢ:Lיʻ/ٴʼ;

.field public static final ⁱˊ:Lיʻ/ᵔﹳ;

.field public static final ﹳٴ:Lיʻ/ᵔﹳ;

.field public static final ﾞᴵ:Lיʻ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    sget-object v0, Lיʻ/ˆʾ;->ˉٴ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ᵔᵢ:Lיʻ/ˆʾ;

    sget-object v2, Lיʻ/ˆʾ;->ˑﹳ:Lיʻ/ˆʾ;

    sget-object v3, Lיʻ/ˆʾ;->ٴﹶ:Lיʻ/ˆʾ;

    sget-object v4, Lיʻ/ˆʾ;->ᵔʾ:Lיʻ/ˆʾ;

    :try_start_0
    invoke-static {}, Lיʻ/ᵔﹳ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v5

    invoke-virtual {v5}, Lˏˆ/ﹳٴ;->ˆﾞ()V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v5}, Lˏˆ/ﹳٴ;->ˊˋ()V

    iput-object v4, v5, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v5}, Lˏˆ/ﹳٴ;->ˉʿ()Lיʻ/ᵔﹳ;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    sput-object v5, Lיʻ/ٴᵢ;->ﹳٴ:Lיʻ/ᵔﹳ;

    :try_start_1
    invoke-static {}, Lיʻ/ᵔﹳ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v5

    invoke-virtual {v5}, Lˏˆ/ﹳٴ;->ˆﾞ()V

    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v5}, Lˏˆ/ﹳٴ;->ˊˋ()V

    iput-object v4, v5, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v5}, Lˏˆ/ﹳٴ;->ˉʿ()Lיʻ/ᵔﹳ;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    sput-object v4, Lיʻ/ٴᵢ;->ⁱˊ:Lיʻ/ᵔﹳ;

    :try_start_2
    invoke-static {}, Lיʻ/ᵔʾ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v4

    invoke-virtual {v4, v6}, Lˏˆ/ﹳٴ;->ᵔٴ(I)V

    invoke-virtual {v4, v6}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v4}, Lˏˆ/ﹳٴ;->ˊˋ()V

    iput-object v3, v4, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v4}, Lˏˆ/ﹳٴ;->ﾞʻ()Lיʻ/ᵔʾ;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    sput-object v4, Lיʻ/ٴᵢ;->ʽ:Lיʻ/ᵔʾ;

    :try_start_3
    invoke-static {}, Lיʻ/ᵔʾ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v4

    invoke-virtual {v4, v6}, Lˏˆ/ﹳٴ;->ᵔٴ(I)V

    invoke-virtual {v4, v7}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v4}, Lˏˆ/ﹳٴ;->ˊˋ()V

    iput-object v3, v4, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v4}, Lˏˆ/ﹳٴ;->ﾞʻ()Lיʻ/ᵔʾ;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    sput-object v3, Lיʻ/ٴᵢ;->ˈ:Lיʻ/ᵔʾ;

    :try_start_4
    invoke-static {}, Lיʻ/ٴﹶ;->ⁱˊ()Lﹳʽ/ᴵᵔ;

    move-result-object v3

    invoke-virtual {v3, v6}, Lﹳʽ/ᴵᵔ;->ʼᐧ(I)V

    invoke-virtual {v3, v7}, Lﹳʽ/ᴵᵔ;->ᵔﹳ(I)V

    invoke-virtual {v3, v6}, Lﹳʽ/ᴵᵔ;->ˏי(I)V

    invoke-virtual {v3, v6}, Lﹳʽ/ᴵᵔ;->ﹳᐧ(I)V

    iput-object v2, v3, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v3, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v3}, Lﹳʽ/ᴵᵔ;->ˑﹳ()Lיʻ/ٴﹶ;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    sput-object v3, Lיʻ/ٴᵢ;->ˑﹳ:Lיʻ/ٴﹶ;

    :try_start_5
    invoke-static {}, Lיʻ/ٴﹶ;->ⁱˊ()Lﹳʽ/ᴵᵔ;

    move-result-object v3

    invoke-virtual {v3, v7}, Lﹳʽ/ᴵᵔ;->ʼᐧ(I)V

    invoke-virtual {v3, v7}, Lﹳʽ/ᴵᵔ;->ᵔﹳ(I)V

    invoke-virtual {v3, v7}, Lﹳʽ/ᴵᵔ;->ˏי(I)V

    invoke-virtual {v3, v6}, Lﹳʽ/ᴵᵔ;->ﹳᐧ(I)V

    iput-object v2, v3, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v3, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v3}, Lﹳʽ/ᴵᵔ;->ˑﹳ()Lיʻ/ٴﹶ;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    sput-object v1, Lיʻ/ٴᵢ;->ﾞᴵ:Lיʻ/ٴﹶ;

    :try_start_6
    sget-object v1, Lיʻ/ˆʾ;->ٴᵢ:Lיʻ/ˆʾ;

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lיʻ/ٴʼ;->ⁱˊ(ILיʻ/ˆʾ;)Lיʻ/ٴʼ;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    sput-object v1, Lיʻ/ٴᵢ;->ᵎﹶ:Lיʻ/ٴʼ;

    :try_start_7
    invoke-static {v2, v0}, Lיʻ/ٴʼ;->ⁱˊ(ILיʻ/ˆʾ;)Lיʻ/ٴʼ;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    sput-object v1, Lיʻ/ٴᵢ;->ᵔᵢ:Lיʻ/ٴʼ;

    const/16 v1, 0x8

    :try_start_8
    invoke-static {v1, v0}, Lיʻ/ٴʼ;->ⁱˊ(ILיʻ/ˆʾ;)Lיʻ/ٴʼ;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    sput-object v0, Lיʻ/ٴᵢ;->ʼˎ:Lיʻ/ٴʼ;

    sput-object v0, Lיʻ/ٴᵢ;->ˆʾ:Lיʻ/ٴʼ;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
