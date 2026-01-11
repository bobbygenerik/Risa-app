.class public final Lʿⁱ/ʽ;
.super Lᴵי/ˋᵔ;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final ʽʽ:Lᴵי/ˏי;

.field public static final ᴵˊ:Lʿⁱ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Lʿⁱ/ʽ;

    invoke-direct {v0}, Lᴵי/ˏי;-><init>()V

    sput-object v0, Lʿⁱ/ʽ;->ᴵˊ:Lʿⁱ/ʽ;

    sget-object v0, Lʿⁱ/ٴﹶ;->ᴵˊ:Lʿⁱ/ٴﹶ;

    sget v1, Lˊʽ/ˏי;->ﹳٴ:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    invoke-static {v1, v2, v3}, Lˊʽ/ⁱˊ;->ﾞʻ(IILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lʿⁱ/ٴﹶ;->י(I)Lᴵי/ˏי;

    move-result-object v0

    sput-object v0, Lʿⁱ/ʽ;->ʽʽ:Lᴵי/ˏי;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-virtual {p0, v0, p1}, Lʿⁱ/ʽ;->ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method

.method public final ʽᵔ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lʿⁱ/ʽ;->ʽʽ:Lᴵי/ˏי;

    invoke-virtual {v0, p1, p2}, Lᴵי/ˏי;->ʽᵔ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lʿⁱ/ʽ;->ʽʽ:Lᴵי/ˏי;

    invoke-virtual {v0, p1, p2}, Lᴵי/ˏי;->ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void
.end method
