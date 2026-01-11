.class public final Lᴵי/ʿᵢ;
.super Lᴵי/ٴﹶ;
.source "SourceFile"


# instance fields
.field public final ᵎⁱ:Lᴵי/ᐧᴵ;


# direct methods
.method public constructor <init>(Lˈי/ˈ;Lᴵי/ᐧᴵ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    iput-object p2, p0, Lᴵי/ʿᵢ;->ᵎⁱ:Lᴵי/ᐧᴵ;

    return-void
.end method


# virtual methods
.method public final ʽʽ()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method

.method public final ˏי(Lᴵי/ᐧᴵ;)Ljava/lang/Throwable;
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵי/ʿᵢ;->ᵎⁱ:Lᴵי/ᐧᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/ᐧﾞ;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lᴵי/ᐧﾞ;

    invoke-virtual {v1}, Lᴵי/ᐧﾞ;->ⁱˊ()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    instance-of v1, v0, Lᴵי/יـ;

    if-eqz v1, :cond_1

    check-cast v0, Lᴵי/יـ;

    iget-object p1, v0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lᴵי/ᐧᴵ;->ˈʿ()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method
