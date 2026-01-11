.class public Lʼʼ/ᵎﹶ;
.super Lʼʼ/ﾞᴵ;
.source "SourceFile"


# instance fields
.field public ˉʿ:I


# direct methods
.method public constructor <init>(Lʼʼ/ˉˆ;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lʼʼ/ﾞᴵ;-><init>(Lʼʼ/ˉˆ;)V

    instance-of p1, p1, Lʼʼ/ٴﹶ;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lʼʼ/ﾞᴵ;->ˑﹳ:I

    return-void

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lʼʼ/ﾞᴵ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final ˈ(I)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    iput p1, p0, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget-object p1, p0, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lʼʼ/ˈ;

    invoke-interface {v2, v2}, Lʼʼ/ˈ;->ﹳٴ(Lʼʼ/ˈ;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
