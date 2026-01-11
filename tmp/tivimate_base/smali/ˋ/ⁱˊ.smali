.class public final Lˋ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lˋ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˋ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˋ/ⁱˊ;->ﹳٴ:Lˋ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()I
    .locals 1

    const v0, 0xf4240

    invoke-static {v0}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    return v0
.end method
