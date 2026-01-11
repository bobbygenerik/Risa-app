.class public final Lᴵי/ʻˋ;
.super Lˊʽ/ᵔﹳ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ᴵᵔ:J


# direct methods
.method public constructor <init>(JLᴵʾ/ʽ;)V
    .locals 1

    invoke-interface {p3}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lˊʽ/ᵔﹳ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    iput-wide p1, p0, Lᴵי/ʻˋ;->ᴵᵔ:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    invoke-static {v0}, Lᴵי/ʾᵎ;->ˆʾ(Lˈי/ᵔᵢ;)Lᴵי/ʽʽ;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timed out waiting for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lᴵי/ʻˋ;->ᴵᵔ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0, p0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lᴵי/ᴵˑ;)V

    invoke-virtual {p0, v1}, Lᴵי/ᐧᴵ;->ᵔﹳ(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ˊˋ()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lᴵי/ᐧᴵ;->ˊˋ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᴵי/ʻˋ;->ᴵᵔ:J

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lᐧـ/ˈ;->ᵔﹳ(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
