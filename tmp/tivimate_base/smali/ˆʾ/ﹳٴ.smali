.class public final Lˆʾ/ﹳٴ;
.super Lˈˆ/ﾞᴵ;
.source "SourceFile"


# instance fields
.field public final synthetic ˈ:I

.field public final ˑﹳ:Landroid/graphics/drawable/Animatable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Animatable;I)V
    .locals 0

    iput p2, p0, Lˆʾ/ﹳٴ;->ˈ:I

    iput-object p1, p0, Lˆʾ/ﹳٴ;->ˑﹳ:Landroid/graphics/drawable/Animatable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ـˏ()V
    .locals 1

    .prologue
    iget v0, p0, Lˆʾ/ﹳٴ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˆʾ/ﹳٴ;->ˑﹳ:Landroid/graphics/drawable/Animatable;

    check-cast v0, Lʻˈ/ﾞᴵ;

    invoke-virtual {v0}, Lʻˈ/ﾞᴵ;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˆʾ/ﹳٴ;->ˑﹳ:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳـ()V
    .locals 1

    .prologue
    iget v0, p0, Lˆʾ/ﹳٴ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˆʾ/ﹳٴ;->ˑﹳ:Landroid/graphics/drawable/Animatable;

    check-cast v0, Lʻˈ/ﾞᴵ;

    invoke-virtual {v0}, Lʻˈ/ﾞᴵ;->stop()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˆʾ/ﹳٴ;->ˑﹳ:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
