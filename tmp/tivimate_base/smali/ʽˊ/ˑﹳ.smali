.class public final Lʽˊ/ˑﹳ;
.super Lˋⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ᵔﹳ:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lʽˊ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0, p1}, Lˋⁱ/ᵎﹶ;-><init>(Lˋⁱ/ᵎﹶ;)V

    iget-object p1, p1, Lʽˊ/ˑﹳ;->ᵔﹳ:Landroid/graphics/RectF;

    iput-object p1, p0, Lʽˊ/ˑﹳ;->ᵔﹳ:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lˋⁱ/ᵔʾ;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lˋⁱ/ᵎﹶ;-><init>(Lˋⁱ/ﾞʻ;)V

    iput-object p2, p0, Lʽˊ/ˑﹳ;->ᵔﹳ:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lʽˊ/ﾞᴵ;

    invoke-direct {v0, p0}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵎﹶ;)V

    iput-object p0, v0, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    return-object v0
.end method
