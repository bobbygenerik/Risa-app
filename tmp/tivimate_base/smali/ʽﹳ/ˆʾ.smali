.class public final Lʽﹳ/ˆʾ;
.super Lʽﹳ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉٴ:Lʽﹳ/ٴﹶ;


# direct methods
.method public constructor <init>(Lʽﹳ/ٴﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽﹳ/ˆʾ;->ˉٴ:Lʽﹳ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final ʼˎ()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lʽﹳ/ˆʾ;->ˉٴ:Lʽﹳ/ٴﹶ;

    iget-object v0, v0, Lʽﹳ/ٴﹶ;->ʾˋ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽﹳ/ᵔᵢ;

    if-nez v0, :cond_0

    const-string v0, "Completer object has been garbage collected, future will fail soon"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lʽﹳ/ᵔᵢ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
