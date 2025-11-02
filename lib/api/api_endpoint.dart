/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 01/02/2025, 20:53
 * Copyright (c) 2025.
 * All rights reserved.
 */

class ApiEndpoint {

  /// Local
  /*static const baseURL = "http://192.168.1.25:8099/api/sandbox/";
  static const baseURLCore = "https://192.168.1.25/sumberdanamakmur/";*/

  /// Production
  static const baseURL = "https://www.ciptapro.com/sudama-api-v2/api/";
  static const baseURLCore = "https://www.ciptapro.com/sumberdanamakmur/";

  /// Sandbox
  /*static const baseURL = "https://www.ciptapro.com/sudama-api-demo-v2/api/sandbox/";
  static const baseURLCore = "https://ciptapro.com/sumberdanamakmur-demo/";*/

  /// Main Endpoint
  static const login = "${baseURL}login";
  static const register = "${baseURL}register";
  static const logout = "${baseURL}logout";
  static const changePassword = "${baseURL}member/password";
  static const changePasswordTransaction = "${baseURL}member/password-transaction";
  static const updateToken = "${baseURL}token/refresh";
  static const refreshUser = "${baseURL}profile";

  static const otpVerification = "${baseURL}whatsapp-otp/verification";
  static const otpResend = "${baseURL}whatsapp-otp/resend";

  static const preferenceCompany = "${baseURL}preference-company";
  static const sliderBanner = "${baseURLCore}Android/getAnnouncement";

  /// Saving Endpoint
  static const savingAccount = "${baseURL}savings-account";
  /// Saving
  static const coreMemberSaving = "${baseURL}get-core-member-saving";
  static const coreMemberSavingAccount = "${baseURL}get-acct-savings-account";
  static const coreMemberDeposito = "${baseURL}get-acct-deposito-list";
  /// History Keanggotaan
  static const coreMemberPrincipalHistory = "${baseURLCore}Android/getCoreMemberPrincipalHistory";
  static const coreMemberMandatoryHistory = "${baseURLCore}Android/getCoreMemberMandatoryHistory";
  static const coreMemberSpecialHistory = "${baseURLCore}Android/getCoreMemberSpecialHistory";
  /// History Sukarela
  static const coreMemberSavingAccountList = "${baseURLCore}Android/getAcctSavingsAccount";
  static const coreMemberSavingAccountHistory = "${baseURLCore}Android/getAcctSavingsAccountHistory";
  /*static const coreMemberSavingAccountMemberList = "${baseURLCore}Android/getAcctSavingsAccountMemberList";*/
  /*static const coreMemberSavingAccountDetail = "${baseURLCore}Android/getAcctSavingsAccountDetail";*/
  /// History mBayar
  static const mBayarHistoryIn = "${baseURLCore}Android/getAcctSavingsAccountMBayarInHistory";
  static const mBayarHistoryOut = "${baseURLCore}Android/getAcctSavingsAccountMBayarOutHistory";
  /// History PPOB
  static const ppobHistoryIn = "${baseURL}ppob-transaction/in-history";
  static const ppobHistoryOut = "${baseURL}ppob-transaction/out-history";
  /// History Angsuran
  static const creditPaymentHistory = "${baseURLCore}Android/getAcctCreditsPaymentHistory";

  /// PPOB Endpoint
  /// Pulsa
  static const ppobPulsaPrepaidProduct = "${baseURL}ppob/pulsa/prepaid";
  static const ppobPulsaPrepaidPayment = "${baseURL}ppob/pulsa/prepaid/payment";
  /// Listrik
  static const ppobPLNPostpaidProduct = "${baseURL}ppob/pln/postpaid";
  static const ppobPLNPostpaidPayment = "${baseURL}ppob/pln/postpaid/payment";
  /// Listrik Token
  static const ppobPLNPrepaidProduct = "${baseURL}ppob/pln/prepaid";
  static const ppobPLNPrepaidPayment = "${baseURL}ppob/pln/prepaid/payment";
  /*Pascabayar*/
  //static const ppobPascabayarProduct = "${baseURL}ppob/emoney/product";
  //static const ppobPascabayarpayment = "${baseURL}ppob/emoney/product";
  /*Telkomsel*/
  //static const ppobTelkomselProduct = "${baseURL}ppob/emoney/product";
  //static const ppobTelkomselPayment = "${baseURL}ppob/emoney/product";
  /// E-Money
  static const ppobEmoneyCategory = "${baseURL}ppob/emoney/category";
  static const ppobEmoneyProduct = "${baseURL}ppob/emoney/product";
  static const ppobEMoneyPayment = "${baseURL}ppob/emoney/payment";
  /// BPJS Kesehatan
  static const ppobBPJSProduct = "${baseURL}ppob/bpjs";
  static const ppobBPJSPayment = "${baseURL}ppob/bpjs/payment";
  /// Game
  static const ppobGameProduct = "${baseURL}ppob/emoney/product";
  static const ppobGamePayment = "${baseURL}ppob/emoney/payment";
  /// Status Transaction
  static const ppobTransactionSuccess = "${baseURL}ppob-transaction/success";
  static const ppobTransactionFail = "${baseURL}ppob-transaction/fail";

  /// mBayar Transfer Endpoint
  static const transactionFromPrint = "${baseURLCore}Android/printAcctSavingsTransferMutationFrom";
  static const transactionToPrint = "${baseURLCore}Android/printAcctSavingsTransferMutationTo";

  static const transactionFromDetail = "${baseURLCore}Android/getAcctSavingsAccountFromDetail";
  static const transactionToDetail = "${baseURLCore}Android/getAcctSavingsAccountToDetail";
  static const transactionProcess = "${baseURLCore}Android/processAddAcctSavingsTransferMutation";
}