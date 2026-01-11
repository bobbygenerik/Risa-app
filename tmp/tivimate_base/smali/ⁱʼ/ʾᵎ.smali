.class public final Lⁱʼ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ᵔﹳ;


# static fields
.field public static final ⁱˊ:Lⁱʼ/ʾᵎ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lⁱʼ/ʾᵎ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lⁱʼ/ʾᵎ;-><init>(I)V

    sput-object v0, Lⁱʼ/ʾᵎ;->ⁱˊ:Lⁱʼ/ʾᵎ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lⁱʼ/ʾᵎ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lⁱʼ/ʻٴ;)Lⁱʼ/ʼᐧ;
    .locals 3

    .prologue
    iget v0, p0, Lⁱʼ/ʾᵎ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lⁱʼ/ᴵˊ;

    const-class v1, Lⁱʼ/ᵎﹶ;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    invoke-direct {v0, p1}, Lⁱʼ/ᴵˊ;-><init>(Lⁱʼ/ʼᐧ;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lʿˋ/ʽ;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lʿˋ/ʽ;-><init>(Lⁱʼ/ʼᐧ;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lʿˋ/ʽ;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lʿˋ/ʽ;-><init>(Lⁱʼ/ʼᐧ;I)V

    return-object v0

    :pswitch_2
    new-instance v0, Lʿˋ/ʽ;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lʿˋ/ʽ;-><init>(Lⁱʼ/ʼᐧ;I)V

    return-object v0

    :pswitch_3
    new-instance p1, Lⁱʼ/ʼʼ;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lⁱʼ/ʼʼ;-><init>(I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lᵎʼ/ʽ;

    new-instance v0, Lⁱʼ/ʽ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lⁱʼ/ʽ;-><init>(I)V

    invoke-direct {p1, v1, v0}, Lᵎʼ/ʽ;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lᵎʼ/ʽ;

    new-instance v0, Lⁱʼ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lⁱʼ/ʽ;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lᵎʼ/ʽ;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_6
    sget-object p1, Lⁱʼ/ʼʼ;->ⁱˊ:Lⁱʼ/ʼʼ;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
