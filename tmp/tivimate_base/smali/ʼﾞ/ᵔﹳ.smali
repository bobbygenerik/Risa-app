.class public final Lʼﾞ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lʼﾞ/ʼᐧ;

.field public final ʽ:Landroid/content/Context;

.field public final ˆʾ:Lʼﾞ/ˉˆ;

.field public final ˈ:Lᴵי/ـˆ;

.field public final ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ٴﹶ:Lʼٴ/ᵢˏ;

.field public ᵎﹶ:Lʼﾞ/ᵎﹶ;

.field public final ᵔᵢ:Lᵎˈ/ʽʽ;

.field public final ⁱˊ:Lʼﾞ/ٴﹶ;

.field public final ﹳٴ:Ljava/lang/String;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lʼﾞ/ٴﹶ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʼﾞ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iput-object p3, p0, Lʼﾞ/ᵔﹳ;->ⁱˊ:Lʼﾞ/ٴﹶ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lʼﾞ/ᵔﹳ;->ʽ:Landroid/content/Context;

    iget-object p1, p3, Lʼﾞ/ٴﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    iget-object p1, p1, Lʼﾞ/ˊʻ;->ﹳٴ:Lˊʽ/ˈ;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lʼﾞ/ᵔﹳ;->ˈ:Lᴵי/ـˆ;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lʼﾞ/ᵔﹳ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lᵎˈ/ʽʽ;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lᵎˈ/ʽʽ;-><init>(I)V

    iput-object p1, p0, Lʼﾞ/ᵔﹳ;->ᵔᵢ:Lᵎˈ/ʽʽ;

    iget-object p1, p3, Lʼﾞ/ٴﹶ;->ⁱˊ:[Ljava/lang/String;

    new-instance p2, Lʼﾞ/ʼᐧ;

    invoke-direct {p2, p0, p1}, Lʼﾞ/ʼᐧ;-><init>(Lʼﾞ/ᵔﹳ;[Ljava/lang/String;)V

    iput-object p2, p0, Lʼﾞ/ᵔﹳ;->ʼˎ:Lʼﾞ/ʼᐧ;

    new-instance p1, Lʼﾞ/ˉˆ;

    invoke-direct {p1, p0}, Lʼﾞ/ˉˆ;-><init>(Lʼﾞ/ᵔﹳ;)V

    iput-object p1, p0, Lʼﾞ/ᵔﹳ;->ˆʾ:Lʼﾞ/ˉˆ;

    new-instance p1, Lʼٴ/ᵢˏ;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lʼٴ/ᵢˏ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lʼﾞ/ᵔﹳ;->ٴﹶ:Lʼٴ/ᵢˏ;

    return-void
.end method
