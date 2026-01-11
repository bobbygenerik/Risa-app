.class public final synthetic Lﹶˎ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lﹶˎ/ˉˆ;


# direct methods
.method public synthetic constructor <init>(Lﹶˎ/ˉˆ;I)V
    .locals 0

    iput p2, p0, Lﹶˎ/ﾞʻ;->ʾˋ:I

    iput-object p1, p0, Lﹶˎ/ﾞʻ;->ᴵˊ:Lﹶˎ/ˉˆ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lﹶˎ/ﾞʻ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iget-object v1, p0, Lﹶˎ/ﾞʻ;->ᴵˊ:Lﹶˎ/ˉˆ;

    iput-boolean v0, v1, Lﹶˎ/ˉˆ;->ᐧᴵ:Z

    invoke-virtual {v1}, Lﹶˎ/ˉˆ;->ᴵᵔ()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶˎ/ﾞʻ;->ᴵˊ:Lﹶˎ/ˉˆ;

    invoke-virtual {v0}, Lﹶˎ/ˉˆ;->ᴵᵔ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
