.class public final Lcom/bumptech/glide/load/data/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ᵎﹶ;


# static fields
.field public static final ʽʽ:Lcom/bumptech/glide/load/data/ᵔᵢ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/load/data/ᵔᵢ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/ᵔᵢ;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/data/ʼˎ;->ʽʽ:Lcom/bumptech/glide/load/data/ᵔᵢ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lיᐧ/ﾞᴵ;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᵔﹶ/ʼʼ;

    invoke-direct {v0, p1, p2}, Lᵔﹶ/ʼʼ;-><init>(Ljava/io/InputStream;Lיᐧ/ﾞᴵ;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    const/high16 p1, 0x500000

    invoke-virtual {v0, p1}, Lᵔﹶ/ʼʼ;->mark(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method private final ʽ()V
    .locals 0

    return-void
.end method

.method private final ˈ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public ˑﹳ()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public ⁱˊ()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔﹶ/ʼʼ;

    invoke-virtual {v0}, Lᵔﹶ/ʼʼ;->ᵎﹶ()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔﹶ/ʼʼ;

    invoke-virtual {v0}, Lᵔﹶ/ʼʼ;->reset()V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
