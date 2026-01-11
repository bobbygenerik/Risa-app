.class public final synthetic Lᵔᐧ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:I

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:I

.field public final synthetic ᴵˊ:Lᵔᐧ/ᵔʾ;


# direct methods
.method public synthetic constructor <init>(Lᵔᐧ/ᵔʾ;III)V
    .locals 0

    iput p4, p0, Lᵔᐧ/ᵔᵢ;->ʾˋ:I

    iput-object p1, p0, Lᵔᐧ/ᵔᵢ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iput p2, p0, Lᵔᐧ/ᵔᵢ;->ʽʽ:I

    iput p3, p0, Lᵔᐧ/ᵔᵢ;->ˈٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lᵔᐧ/ᵔᵢ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᵔᐧ/ᵔᵢ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ᵔᵢ;->ʽʽ:I

    iget v2, p0, Lᵔᐧ/ᵔᵢ;->ˈٴ:I

    :try_start_0
    iget-object v3, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lᵔᐧ/ـˆ;->ʾˋ(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1}, Lᵔᐧ/ᵔʾ;->ʽ(IILjava/io/IOException;)V

    :goto_0
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lᵔᐧ/ᵔᵢ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ᵔᵢ;->ʽʽ:I

    iget v2, p0, Lᵔᐧ/ᵔᵢ;->ˈٴ:I

    :try_start_1
    iget-object v3, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    invoke-virtual {v3, v1, v2}, Lᵔᐧ/ـˆ;->ˈٴ(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1}, Lᵔᐧ/ᵔʾ;->ʽ(IILjava/io/IOException;)V

    :goto_1
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
