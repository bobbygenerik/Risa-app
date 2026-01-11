.class public final Lᴵי/ᴵʼ;
.super Lˈי/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lᴵי/ᴵˑ;


# static fields
.field public static final ᴵˊ:Lᴵי/ᴵʼ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵי/ᴵʼ;

    sget-object v1, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-direct {v0, v1}, Lˈי/ﹳٴ;-><init>(Lˈי/ᵎﹶ;)V

    sput-object v0, Lᴵי/ᴵʼ;->ᴵˊ:Lᴵי/ᴵʼ;

    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final start()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonCancellable"

    return-object v0
.end method

.method public final ʽ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ˈʿ()Ljava/util/concurrent/CancellationException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᴵˑ(Lᴵⁱ/ﾞʻ;)Lᴵי/ᵎⁱ;
    .locals 0

    sget-object p1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    return-object p1
.end method

.method public final ᵎˊ(Lᴵי/ᐧᴵ;)Lᴵי/ᵔʾ;
    .locals 0

    sget-object p1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    return-object p1
.end method

.method public final ᵎﹶ(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    return-void
.end method

.method public final ﹳᐧ(ZZLʼⁱ/ᴵˊ;)Lᴵי/ᵎⁱ;
    .locals 0

    sget-object p1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    return-object p1
.end method
