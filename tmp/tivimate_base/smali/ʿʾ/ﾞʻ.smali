.class public final Lʿʾ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʿʾ/ﾞʻ;

.field public static final ˈ:Lʿʾ/ﾞʻ;

.field public static final ⁱˊ:Lʿʾ/ﾞʻ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʿʾ/ﾞʻ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lʿʾ/ﾞʻ;-><init>(I)V

    sput-object v0, Lʿʾ/ﾞʻ;->ⁱˊ:Lʿʾ/ﾞʻ;

    new-instance v0, Lʿʾ/ﾞʻ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʿʾ/ﾞʻ;-><init>(I)V

    sput-object v0, Lʿʾ/ﾞʻ;->ʽ:Lʿʾ/ﾞʻ;

    new-instance v0, Lʿʾ/ﾞʻ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lʿʾ/ﾞʻ;-><init>(I)V

    sput-object v0, Lʿʾ/ﾞʻ;->ˈ:Lʿʾ/ﾞʻ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʿʾ/ﾞʻ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(I)Z
    .locals 1

    .prologue
    iget v0, p0, Lʿʾ/ﾞʻ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
