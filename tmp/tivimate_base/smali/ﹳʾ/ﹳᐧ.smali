.class public abstract Lﹳʾ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʾ/ˈ;

.field public static final ⁱˊ:Lﹳʾ/ﾞʻ;

.field public static final ﹳٴ:Lﹳʾ/ﾞʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    sget-object v0, Lﹳʾ/ˆʾ;->ﾞᴵ:Lﹳʾ/ˆʾ;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lﹳʾ/ˆʾ;->ˈ:Lﹳʾ/ˆʾ;

    sget-object v3, Lﹳʾ/ٴﹶ;->ⁱˊ:Lﹳʾ/ٴﹶ;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :try_start_0
    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v6

    iput-object v5, v6, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v6, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v3, v6, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v2, v6, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v6}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    sput-object v6, Lﹳʾ/ﹳᐧ;->ﹳٴ:Lﹳʾ/ﾞʻ;

    :try_start_1
    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v6

    iput-object v5, v6, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v5, v6, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v3, v6, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v2, v6, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v6}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v2

    iput-object v1, v2, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v5, v2, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v3, v2, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v0, v2, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v2}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {}, Lﹳʾ/ﾞʻ;->ⁱˊ()Lᐧᵎ/ᵢי;

    move-result-object v2

    iput-object v1, v2, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    iput-object v1, v2, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    iput-object v3, v2, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    iput-object v0, v2, Lᐧᵎ/ᵢי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v2}, Lᐧᵎ/ᵢי;->ᵎﹶ()Lﹳʾ/ﾞʻ;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    sput-object v0, Lﹳʾ/ﹳᐧ;->ⁱˊ:Lﹳʾ/ﾞʻ;

    :try_start_4
    invoke-static {}, Lﹳʾ/ˈ;->ⁱˊ()Lˑי/ʽ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lˑי/ʽ;->ᴵᵔ(I)V

    invoke-virtual {v0, v7}, Lˑי/ʽ;->ˊʻ(I)V

    sget-object v1, Lﹳʾ/ʽ;->ⁱˊ:Lﹳʾ/ʽ;

    iput-object v1, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v0}, Lˑי/ʽ;->יـ()Lﹳʾ/ˈ;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    sput-object v0, Lﹳʾ/ﹳᐧ;->ʽ:Lﹳʾ/ˈ;

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
.end method
