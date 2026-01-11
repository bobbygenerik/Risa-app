.class public final Lᴵᵔ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic ʾˋ:Lᴵᵔ/ʽ;


# direct methods
.method public constructor <init>(Lᴵᵔ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵᵔ/ⁱˊ;->ʾˋ:Lᴵᵔ/ʽ;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 5

    .prologue
    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    iget-object v0, p0, Lᴵᵔ/ⁱˊ;->ʾˋ:Lᴵᵔ/ʽ;

    iget-object v1, v0, Lᴵᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ﹳٴ;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v4, p1, p2}, Lᴵᵔ/ﹳٴ;->ﹳٴ(J)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, v0, Lᴵᵔ/ʽ;->ʽ:Z

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    iput-boolean v2, v0, Lᴵᵔ/ʽ;->ʽ:Z

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, v0, Lᴵᵔ/ʽ;->ﹳٴ:Lᴵᵔ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_5
    return-void
.end method
