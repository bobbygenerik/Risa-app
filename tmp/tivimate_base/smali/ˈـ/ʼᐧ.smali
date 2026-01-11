.class public final synthetic Lˈـ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lˈـ/יـ;


# direct methods
.method public synthetic constructor <init>(Lˈـ/יـ;I)V
    .locals 0

    iput p2, p0, Lˈـ/ʼᐧ;->ʾˋ:I

    iput-object p1, p0, Lˈـ/ʼᐧ;->ᴵˊ:Lˈـ/יـ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget v0, p0, Lˈـ/ʼᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˈـ/ʼᐧ;->ᴵˊ:Lˈـ/יـ;

    invoke-static {v0}, Lˈـ/יـ;->ʽ(Lˈـ/יـ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˈـ/ʼᐧ;->ᴵˊ:Lˈـ/יـ;

    invoke-static {v0}, Lˈـ/יـ;->ʽ(Lˈـ/יـ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
