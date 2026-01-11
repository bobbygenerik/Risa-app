.class public final Lˋⁱ/ᵔﹳ;
.super Lˋⁱ/ـˆ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Ljava/util/ArrayList;

.field public final synthetic ˈ:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lˋⁱ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    iput-object p2, p0, Lˋⁱ/ᵔﹳ;->ˈ:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lˋⁱ/ـˆ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/graphics/Matrix;Lʿˊ/ﹳٴ;ILandroid/graphics/Canvas;)V
    .locals 4

    .prologue
    iget-object p1, p0, Lˋⁱ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lˋⁱ/ـˆ;

    iget-object v3, p0, Lˋⁱ/ᵔﹳ;->ˈ:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, p2, p3, p4}, Lˋⁱ/ـˆ;->ﹳٴ(Landroid/graphics/Matrix;Lʿˊ/ﹳٴ;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
