.class public final Lﹶˑ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final ʾˋ:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    const/4 p1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    :pswitch_0
    const/16 p1, 0x80

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x20

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x10

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x2

    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x40

    :cond_0
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {p0, p1}, Lﹶˑ/ʼˎ;-><init>(Ljava/util/regex/Pattern;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {p0, p1}, Lﹶˑ/ʼˎ;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˑ/ʼˎ;->ʾˋ:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static ﹳٴ(Lﹶˑ/ʼˎ;Ljava/lang/String;)Lʼᴵ/ˑﹳ;
    .locals 3

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lʽˋ/ـˆ;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1, p1}, Lʽˋ/ـˆ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p0, Lﹶˑ/ᵔᵢ;->ᵎⁱ:Lﹶˑ/ᵔᵢ;

    new-instance p0, Lʼᴵ/ˑﹳ;

    invoke-direct {p0, v0}, Lʼᴵ/ˑﹳ;-><init>(Lʽˋ/ـˆ;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Start index out of bounds: "

    const-string v1, ", input length: "

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹶˑ/ʼˎ;->ʾˋ:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(ILjava/lang/String;)Lﹶˑ/ᵎﹶ;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶˑ/ʼˎ;->ʾˋ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lﹶˑ/ᵎﹶ;

    invoke-direct {v0, p1, p2}, Lﹶˑ/ᵎﹶ;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
