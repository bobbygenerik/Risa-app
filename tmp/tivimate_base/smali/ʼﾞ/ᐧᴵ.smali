.class public final Lʼﾞ/ᐧᴵ;
.super Lʼﾞ/ʼˎ;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/ref/WeakReference;

.field public final ⁱˊ:Lʼﾞ/ٴﹶ;


# direct methods
.method public constructor <init>(Lʼﾞ/ٴﹶ;Lʼﾞ/ᵔי;)V
    .locals 1

    iget-object v0, p2, Lʼﾞ/ʼˎ;->ﹳٴ:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lʼﾞ/ʼˎ;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lʼﾞ/ᐧᴵ;->ⁱˊ:Lʼﾞ/ٴﹶ;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lʼﾞ/ᐧᴵ;->ʽ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/util/Set;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʼﾞ/ᐧᴵ;->ʽ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼﾞ/ʼˎ;

    if-nez v0, :cond_0

    iget-object p1, p0, Lʼﾞ/ᐧᴵ;->ⁱˊ:Lʼﾞ/ٴﹶ;

    invoke-virtual {p1, p0}, Lʼﾞ/ٴﹶ;->ʽ(Lʼﾞ/ʼˎ;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lʼﾞ/ʼˎ;->ﹳٴ(Ljava/util/Set;)V

    return-void
.end method
