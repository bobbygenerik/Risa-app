.class public final Lʻˈ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public final synthetic ʾˋ:I

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʻˈ/ʽ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lʻˈ/ﾞᴵ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʻˈ/ʽ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method private final ﹳٴ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    iget p1, p0, Lʻˈ/ʽ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʻˈ/ﾞᴵ;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʻˈ/ﾞᴵ;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʻˈ/ﾞᴵ;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
