.class public final Lʾˑ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˆʾ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʾˑ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 0

    .prologue
    iget p2, p0, Lʾˑ/ﹳٴ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance p2, Lʾˑ/ⁱˊ;

    invoke-direct {p2, p1}, Lʾˑ/ⁱˊ;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2

    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    new-instance p2, Lˉˈ/ˑﹳ;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lˉˈ/ˑﹳ;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :pswitch_1
    check-cast p1, Ljava/io/File;

    new-instance p2, Lʾˑ/ⁱˊ;

    invoke-direct {p2, p1}, Lʾˑ/ⁱˊ;-><init>(Ljava/io/File;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z
    .locals 0

    .prologue
    iget p2, p0, Lʾˑ/ﹳٴ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/io/File;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
