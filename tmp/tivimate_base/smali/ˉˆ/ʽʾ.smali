.class public final synthetic Lˉˆ/ʽʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lˉˆ/ˆˑ;


# direct methods
.method public synthetic constructor <init>(Lˉˆ/ˆˑ;I)V
    .locals 0

    iput p2, p0, Lˉˆ/ʽʾ;->ʾˋ:I

    iput-object p1, p0, Lˉˆ/ʽʾ;->ᴵˊ:Lˉˆ/ˆˑ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lˉˆ/ʽʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˆ/ʽʾ;->ᴵˊ:Lˉˆ/ˆˑ;

    invoke-virtual {v0}, Lˉˆ/ˆˑ;->ﹳٴ()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ʽʾ;->ᴵˊ:Lˉˆ/ˆˑ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lˉˆ/ˆˑ;->ʽ(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
